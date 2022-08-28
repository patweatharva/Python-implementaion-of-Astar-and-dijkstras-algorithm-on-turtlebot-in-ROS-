#! /usr/bin/env python


import heapq
import rospy
from math import sqrt
from algorithms.neighbors import find_neighbors


def euclidean_distance(index, goal_index, width):
    index_x = index % width
    index_y = int(index / width)
    goal_x = goal_index % width
    goal_y = int(goal_index / width)
    distance = (index_x - goal_x) ** 2 + (index_y - goal_y) ** 2
    return sqrt(distance)


def astar(start_index, goal_index, width, height, costmap, resolution, origin, grid_viz, previous_plan_variables):

    open_list = []
    closed_list = set()
    parents = dict()
    g_costs = dict()
    f_costs = dict()
    g_costs[start_index] = 0
    f_costs[start_index] = 0

    start_cost = 0 + euclidean_distance(start_index, goal_index, width)
    open_list.append([start_index, start_cost])
    heapq.heappush(open_list, [start_cost, start_index])

    shortest_path = []

    path_found = False
    rospy.loginfo('A Star: Done with initialization')

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

            g_cost = g_costs[current_node] + step_cost
            h_cost = euclidean_distance(neighbor_index, goal_index, width)
            f_cost = g_cost + h_cost

            in_open_list = False
            for idx, element in enumerate(open_list):
                if element[1] == neighbor_index:
                    in_open_list = True
                    break

            if in_open_list:
                if f_cost < f_costs[neighbor_index]:
                    g_costs[neighbor_index] = g_cost
                    f_costs[neighbor_index] = f_cost
                    parents[neighbor_index] = current_node
                    open_list[idx] = [f_cost, neighbor_index]

            else:
                g_costs[neighbor_index] = g_cost
                f_costs[neighbor_index] = f_cost
                parents[neighbor_index] = current_node
                heapq.heappush(open_list, [f_cost, neighbor_index])
                grid_viz.set_color(neighbor_index, 'orange')

    rospy.loginfo('AStar: Done traversing nodes in open_list')

    if not path_found:
        rospy.logwarn('AStar: No path found!')
        return shortest_path

    if path_found:
        node = goal_index
        shortest_path.append(goal_index)
        while node != start_index:
            shortest_path.append(node)
            node = parents[node]
    shortest_path = shortest_path[::-1]
    rospy.loginfo('AStar: Done reconstructing path')

    return shortest_path, None
