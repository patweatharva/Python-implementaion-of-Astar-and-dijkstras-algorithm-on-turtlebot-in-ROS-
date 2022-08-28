def find_neighbors(index, width, height, costmap, orthogonal_step_cost):

    neighbors = []
    diagonal_step_cost = orthogonal_step_cost * 1.41421
    lethal_cost = 150

    upper = index - width
    if upper > 0:
        if costmap[upper] < lethal_cost:
            step_cost = orthogonal_step_cost + costmap[upper]/255
            neighbors.append([upper, step_cost])

    left = index - 1
    if left % width > 0:
        if costmap[left] < lethal_cost:
            step_cost = orthogonal_step_cost + costmap[left]/255
            neighbors.append([left, step_cost])

    upper_left = index - width - 1
    if upper_left > 0 and upper_left % width > 0:
        if costmap[upper_left] < lethal_cost:
            step_cost = diagonal_step_cost + costmap[upper_left]/255
            neighbors.append([index - width - 1, step_cost])

    upper_right = index - width + 1
    if upper_right > 0 and (upper_right) % width != (width - 1):
        if costmap[upper_right] < lethal_cost:
            step_cost = diagonal_step_cost + costmap[upper_right]/255
            neighbors.append([upper_right, step_cost])

    right = index + 1
    if right % width != (width + 1):
        if costmap[right] < lethal_cost:
            step_cost = orthogonal_step_cost + costmap[right]/255
            neighbors.append([right, step_cost])

    lower_left = index + width - 1
    if lower_left < height * width and lower_left % width != 0:
        if costmap[lower_left] < lethal_cost:
            step_cost = diagonal_step_cost + costmap[lower_left]/255
            neighbors.append([lower_left, step_cost])

    lower = index + width
    if lower <= height * width:
        if costmap[lower] < lethal_cost:
            step_cost = orthogonal_step_cost + costmap[lower]/255
            neighbors.append([lower, step_cost])

    lower_right = index + width + 1
    if (lower_right) <= height * width and lower_right % width != (width - 1):
        if costmap[lower_right] < lethal_cost:
            step_cost = diagonal_step_cost + costmap[lower_right]/255
            neighbors.append([lower_right, step_cost])

    return neighbors


def find_weighted_neighbors(index, width, height, costmap, orthogonal_step_cost):

    neighbors = []
    diagonal_step_cost = orthogonal_step_cost * 1.41421
    lethal_cost = 150
    step_cost = 0

    upper = index - width
    if upper > 0:
        if costmap[upper] < lethal_cost:
            step_cost = orthogonal_step_cost + costmap[upper]/255
        else:
            step_cost = float('inf')
        neighbors.append([upper, step_cost])

    left = index - 1
    if left % width > 0:
        if costmap[left] < lethal_cost:
            step_cost = orthogonal_step_cost + costmap[left]/255
        else:
            step_cost = float('inf')
        neighbors.append([left, step_cost])

    upper_left = index - width - 1
    if upper_left > 0 and upper_left % width > 0:
        if costmap[upper_left] < lethal_cost:
            step_cost = diagonal_step_cost + costmap[upper_left]/255
        else:
            step_cost = float('inf')
        neighbors.append([index - width - 1, step_cost])

    upper_right = index - width + 1
    if upper_right > 0 and (upper_right) % width != (width - 1):
        if costmap[upper_right] < lethal_cost:
            step_cost = diagonal_step_cost + costmap[upper_right]/255
        else:
            step_cost = float('inf')
        neighbors.append([upper_right, step_cost])

    right = index + 1
    if right % width != (width + 1):
        if costmap[right] < lethal_cost:
            step_cost = orthogonal_step_cost + costmap[right]/255
        else:
            step_cost = float('inf')
        neighbors.append([right, step_cost])

    lower_left = index + width - 1
    if lower_left < height * width and lower_left % width != 0:
        if costmap[lower_left] < lethal_cost:
            step_cost = diagonal_step_cost + costmap[lower_left]/255
        else:
            step_cost = float('inf')
        neighbors.append([lower_left, step_cost])

    lower = index + width
    if lower <= height * width:
        if costmap[lower] < lethal_cost:
            step_cost = orthogonal_step_cost + costmap[lower]/255
        else:
            step_cost = float('inf')
        neighbors.append([lower, step_cost])

    lower_right = index + width + 1
    if (lower_right) <= height * width and lower_right % width != (width - 1):
        if costmap[lower_right] < lethal_cost:
            step_cost = diagonal_step_cost + costmap[lower_right]/255
        else:
            step_cost = float('inf')
        neighbors.append([lower_right, step_cost])

    return neighbors
