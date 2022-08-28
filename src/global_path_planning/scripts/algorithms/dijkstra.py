#! /usr/bin/env python

import heapq
import rospy
from algorithms.neighbors import find_neighbors


def dijkstra(start_index, goal_index, width, height, costmap, resolution, origin, grid_viz, previous_plan_variables):

    open_list = []
    closed_list = set()
    parents = dict()
    g_costs = dict()
    g_costs[start_index] = 0
    open_list.append([start_index, 0])
    shortest_path = []

    path_found = False
    rospy.loginfo('Dijkstra: Done with initialization')

    while open_list:

        open_list.sort(key=lambda x: x[1])
        current_node = open_list.pop(0)[0]
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

            in_open_list = False
            for idx, element in enumerate(open_list):
                if element[0] == neighbor_index:
                    in_open_list = True
                    break

            if in_open_list:
                if g_cost < g_costs[neighbor_index]:
                    g_costs[neighbor_index] = g_cost
                    parents[neighbor_index] = current_node
                    open_list[idx] = [neighbor_index, g_cost]

            else:
                g_costs[neighbor_index] = g_cost
                parents[neighbor_index] = current_node
                open_list.append([neighbor_index, g_cost])
                grid_viz.set_color(neighbor_index, 'orange')

    rospy.loginfo('Dijkstra: Done traversing nodes in open_list')

    if not path_found:
        rospy.logwarn('Dijkstra: No path found!')
        return shortest_path

    if path_found:
        node = goal_index
        shortest_path.append(goal_index)
        while node != start_index:
            shortest_path.append(node)

            node = parents[node]

    shortest_path = shortest_path[::-1]
    rospy.loginfo('Dijkstra: Done reconstructing path')

    return shortest_path, None
