#! /usr/bin/env python

import heapq
import rospy
from algorithms.neighbors import find_neighbors


def euclidean_distance(index, goal_index, width):
    """ Heuristic Function for A Star algorithm"""
    index_x = index % width
    index_y = int(index / width)
    goal_x = goal_index % width
    goal_y = int(goal_index / width)

    distance = (index_x - goal_x) ** 2 + (index_y - goal_y) ** 2
    return distance


def greedy(start_index, goal_index, width, height, costmap, resolution, origin, grid_viz, previous_plan_variables):

    open_list = []
    closed_list = set()
    parents = dict()
    h_costs = dict()
    start_cost = euclidean_distance(start_index, goal_index, width)
    h_costs[start_index] = start_cost

    heapq.heappush(open_list, [start_cost, start_index])

    shortest_path = []

    path_found = False
    rospy.loginfo('Greedy: Initialization has been done using priority queue')

    while open_list:

        current_node = heapq.heappop(open_list)[1]
        closed_list.add(current_node)
        grid_viz.set_color(current_node, "pale yellow")

        if current_node == goal_index:
            path_found = True
            break

        neighbors = find_neighbors(
            current_node, width, height, costmap, resolution)

        for neighbor_index, step_cost in neighbors:
            if neighbor_index in closed_list:
                continue

            h_cost = euclidean_distance(neighbor_index, goal_index, width)

            in_open_list = False
            for idx, element in enumerate(open_list):
                if element[1] == neighbor_index:
                    in_open_list = True
                    break

            if in_open_list:
                if h_cost < h_costs[neighbor_index]:
                    h_costs[neighbor_index] = h_cost
                    parents[neighbor_index] = current_node
                    open_list[idx] = [h_cost, neighbor_index]

            else:
                h_costs[neighbor_index] = h_cost
                parents[neighbor_index] = current_node
                heapq.heappush(open_list, [h_cost, neighbor_index])
                grid_viz.set_color(neighbor_index, 'orange')

    rospy.loginfo('Greedy: Done traversing nodes in open_list')

    if not path_found:
        rospy.logwarn('Greedy: No path found!')
        return shortest_path

    if path_found:
        node = goal_index
        shortest_path.append(goal_index)
        while node != start_index:
            shortest_path.append(node)
            node = parents[node]

    shortest_path = shortest_path[::-1]
    rospy.loginfo('Greedy: Done reconstructing path')

    return shortest_path, None
