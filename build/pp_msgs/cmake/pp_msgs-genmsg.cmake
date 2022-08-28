# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pp_msgs: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/noetic/share/trajectory_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pp_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/PathPlanningPlugin.srv" NAME_WE)
add_custom_target(_pp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pp_msgs" "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/PathPlanningPlugin.srv" ""
)

get_filename_component(_filename "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/MoveItPlugin.srv" NAME_WE)
add_custom_target(_pp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pp_msgs" "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/MoveItPlugin.srv" "trajectory_msgs/JointTrajectory:trajectory_msgs/JointTrajectoryPoint:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(pp_msgs
  "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/PathPlanningPlugin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pp_msgs
)
_generate_srv_cpp(pp_msgs
  "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/MoveItPlugin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pp_msgs
)

### Generating Module File
_generate_module_cpp(pp_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pp_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pp_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pp_msgs_generate_messages pp_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/PathPlanningPlugin.srv" NAME_WE)
add_dependencies(pp_msgs_generate_messages_cpp _pp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/MoveItPlugin.srv" NAME_WE)
add_dependencies(pp_msgs_generate_messages_cpp _pp_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pp_msgs_gencpp)
add_dependencies(pp_msgs_gencpp pp_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pp_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(pp_msgs
  "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/PathPlanningPlugin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pp_msgs
)
_generate_srv_eus(pp_msgs
  "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/MoveItPlugin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pp_msgs
)

### Generating Module File
_generate_module_eus(pp_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pp_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pp_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pp_msgs_generate_messages pp_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/PathPlanningPlugin.srv" NAME_WE)
add_dependencies(pp_msgs_generate_messages_eus _pp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/MoveItPlugin.srv" NAME_WE)
add_dependencies(pp_msgs_generate_messages_eus _pp_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pp_msgs_geneus)
add_dependencies(pp_msgs_geneus pp_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pp_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(pp_msgs
  "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/PathPlanningPlugin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pp_msgs
)
_generate_srv_lisp(pp_msgs
  "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/MoveItPlugin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pp_msgs
)

### Generating Module File
_generate_module_lisp(pp_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pp_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pp_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pp_msgs_generate_messages pp_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/PathPlanningPlugin.srv" NAME_WE)
add_dependencies(pp_msgs_generate_messages_lisp _pp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/MoveItPlugin.srv" NAME_WE)
add_dependencies(pp_msgs_generate_messages_lisp _pp_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pp_msgs_genlisp)
add_dependencies(pp_msgs_genlisp pp_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pp_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(pp_msgs
  "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/PathPlanningPlugin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pp_msgs
)
_generate_srv_nodejs(pp_msgs
  "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/MoveItPlugin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pp_msgs
)

### Generating Module File
_generate_module_nodejs(pp_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pp_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pp_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pp_msgs_generate_messages pp_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/PathPlanningPlugin.srv" NAME_WE)
add_dependencies(pp_msgs_generate_messages_nodejs _pp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/MoveItPlugin.srv" NAME_WE)
add_dependencies(pp_msgs_generate_messages_nodejs _pp_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pp_msgs_gennodejs)
add_dependencies(pp_msgs_gennodejs pp_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pp_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(pp_msgs
  "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/PathPlanningPlugin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pp_msgs
)
_generate_srv_py(pp_msgs
  "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/MoveItPlugin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pp_msgs
)

### Generating Module File
_generate_module_py(pp_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pp_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pp_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pp_msgs_generate_messages pp_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/PathPlanningPlugin.srv" NAME_WE)
add_dependencies(pp_msgs_generate_messages_py _pp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Robotics-Playground/turtlebot3_ws/src/pp_msgs/srv/MoveItPlugin.srv" NAME_WE)
add_dependencies(pp_msgs_generate_messages_py _pp_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pp_msgs_genpy)
add_dependencies(pp_msgs_genpy pp_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pp_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pp_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pp_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pp_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(pp_msgs_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pp_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pp_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pp_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(pp_msgs_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pp_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pp_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pp_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(pp_msgs_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pp_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pp_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pp_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(pp_msgs_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pp_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pp_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pp_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pp_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(pp_msgs_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
