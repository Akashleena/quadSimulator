# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "iris_sim: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iiris_sim:/home/akashleena/catkin_ws/src/quadSimulator/msg;-Igazebo_msgs:/opt/ros/noetic/share/gazebo_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/noetic/share/trajectory_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(iris_sim_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/akashleena/catkin_ws/src/quadSimulator/msg/Progress.msg" NAME_WE)
add_custom_target(_iris_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iris_sim" "/home/akashleena/catkin_ws/src/quadSimulator/msg/Progress.msg" ""
)

get_filename_component(_filename "/home/akashleena/catkin_ws/src/quadSimulator/msg/Feedback.msg" NAME_WE)
add_custom_target(_iris_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iris_sim" "/home/akashleena/catkin_ws/src/quadSimulator/msg/Feedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(iris_sim
  "/home/akashleena/catkin_ws/src/quadSimulator/msg/Progress.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iris_sim
)
_generate_msg_cpp(iris_sim
  "/home/akashleena/catkin_ws/src/quadSimulator/msg/Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iris_sim
)

### Generating Services

### Generating Module File
_generate_module_cpp(iris_sim
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iris_sim
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(iris_sim_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(iris_sim_generate_messages iris_sim_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akashleena/catkin_ws/src/quadSimulator/msg/Progress.msg" NAME_WE)
add_dependencies(iris_sim_generate_messages_cpp _iris_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akashleena/catkin_ws/src/quadSimulator/msg/Feedback.msg" NAME_WE)
add_dependencies(iris_sim_generate_messages_cpp _iris_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iris_sim_gencpp)
add_dependencies(iris_sim_gencpp iris_sim_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iris_sim_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(iris_sim
  "/home/akashleena/catkin_ws/src/quadSimulator/msg/Progress.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iris_sim
)
_generate_msg_eus(iris_sim
  "/home/akashleena/catkin_ws/src/quadSimulator/msg/Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iris_sim
)

### Generating Services

### Generating Module File
_generate_module_eus(iris_sim
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iris_sim
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(iris_sim_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(iris_sim_generate_messages iris_sim_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akashleena/catkin_ws/src/quadSimulator/msg/Progress.msg" NAME_WE)
add_dependencies(iris_sim_generate_messages_eus _iris_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akashleena/catkin_ws/src/quadSimulator/msg/Feedback.msg" NAME_WE)
add_dependencies(iris_sim_generate_messages_eus _iris_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iris_sim_geneus)
add_dependencies(iris_sim_geneus iris_sim_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iris_sim_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(iris_sim
  "/home/akashleena/catkin_ws/src/quadSimulator/msg/Progress.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iris_sim
)
_generate_msg_lisp(iris_sim
  "/home/akashleena/catkin_ws/src/quadSimulator/msg/Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iris_sim
)

### Generating Services

### Generating Module File
_generate_module_lisp(iris_sim
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iris_sim
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(iris_sim_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(iris_sim_generate_messages iris_sim_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akashleena/catkin_ws/src/quadSimulator/msg/Progress.msg" NAME_WE)
add_dependencies(iris_sim_generate_messages_lisp _iris_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akashleena/catkin_ws/src/quadSimulator/msg/Feedback.msg" NAME_WE)
add_dependencies(iris_sim_generate_messages_lisp _iris_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iris_sim_genlisp)
add_dependencies(iris_sim_genlisp iris_sim_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iris_sim_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(iris_sim
  "/home/akashleena/catkin_ws/src/quadSimulator/msg/Progress.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iris_sim
)
_generate_msg_nodejs(iris_sim
  "/home/akashleena/catkin_ws/src/quadSimulator/msg/Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iris_sim
)

### Generating Services

### Generating Module File
_generate_module_nodejs(iris_sim
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iris_sim
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(iris_sim_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(iris_sim_generate_messages iris_sim_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akashleena/catkin_ws/src/quadSimulator/msg/Progress.msg" NAME_WE)
add_dependencies(iris_sim_generate_messages_nodejs _iris_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akashleena/catkin_ws/src/quadSimulator/msg/Feedback.msg" NAME_WE)
add_dependencies(iris_sim_generate_messages_nodejs _iris_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iris_sim_gennodejs)
add_dependencies(iris_sim_gennodejs iris_sim_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iris_sim_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(iris_sim
  "/home/akashleena/catkin_ws/src/quadSimulator/msg/Progress.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iris_sim
)
_generate_msg_py(iris_sim
  "/home/akashleena/catkin_ws/src/quadSimulator/msg/Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iris_sim
)

### Generating Services

### Generating Module File
_generate_module_py(iris_sim
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iris_sim
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(iris_sim_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(iris_sim_generate_messages iris_sim_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akashleena/catkin_ws/src/quadSimulator/msg/Progress.msg" NAME_WE)
add_dependencies(iris_sim_generate_messages_py _iris_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akashleena/catkin_ws/src/quadSimulator/msg/Feedback.msg" NAME_WE)
add_dependencies(iris_sim_generate_messages_py _iris_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iris_sim_genpy)
add_dependencies(iris_sim_genpy iris_sim_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iris_sim_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iris_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iris_sim
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET gazebo_msgs_generate_messages_cpp)
  add_dependencies(iris_sim_generate_messages_cpp gazebo_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(iris_sim_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(iris_sim_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(iris_sim_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iris_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iris_sim
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET gazebo_msgs_generate_messages_eus)
  add_dependencies(iris_sim_generate_messages_eus gazebo_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(iris_sim_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(iris_sim_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(iris_sim_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iris_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iris_sim
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET gazebo_msgs_generate_messages_lisp)
  add_dependencies(iris_sim_generate_messages_lisp gazebo_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(iris_sim_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(iris_sim_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(iris_sim_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iris_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iris_sim
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET gazebo_msgs_generate_messages_nodejs)
  add_dependencies(iris_sim_generate_messages_nodejs gazebo_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(iris_sim_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(iris_sim_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(iris_sim_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iris_sim)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iris_sim\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iris_sim
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET gazebo_msgs_generate_messages_py)
  add_dependencies(iris_sim_generate_messages_py gazebo_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(iris_sim_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(iris_sim_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(iris_sim_generate_messages_py std_msgs_generate_messages_py)
endif()
