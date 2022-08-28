;; Auto-generated. Do not edit!


(when (boundp 'pp_msgs::MoveItPlugin)
  (if (not (find-package "PP_MSGS"))
    (make-package "PP_MSGS"))
  (shadow 'MoveItPlugin (find-package "PP_MSGS")))
(unless (find-package "PP_MSGS::MOVEITPLUGIN")
  (make-package "PP_MSGS::MOVEITPLUGIN"))
(unless (find-package "PP_MSGS::MOVEITPLUGINREQUEST")
  (make-package "PP_MSGS::MOVEITPLUGINREQUEST"))
(unless (find-package "PP_MSGS::MOVEITPLUGINRESPONSE")
  (make-package "PP_MSGS::MOVEITPLUGINRESPONSE"))

(in-package "ROS")



(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass pp_msgs::MoveItPluginRequest
  :super ros::object
  :slots (_joint_names _start_joint _goal_joint ))

(defmethod pp_msgs::MoveItPluginRequest
  (:init
   (&key
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:start_joint __start_joint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:goal_joint __goal_joint) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_names __joint_names)
   (setq _start_joint __start_joint)
   (setq _goal_joint __goal_joint)
   self)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:start_joint
   (&optional __start_joint)
   (if __start_joint (setq _start_joint __start_joint)) _start_joint)
  (:goal_joint
   (&optional __goal_joint)
   (if __goal_joint (setq _goal_joint __goal_joint)) _goal_joint)
  (:serialization-length
   ()
   (+
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float64[] _start_joint
    (* 8    (length _start_joint)) 4
    ;; float64[] _goal_joint
    (* 8    (length _goal_joint)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _start_joint
     (write-long (length _start_joint) s)
     (dotimes (i (length _start_joint))
       (sys::poke (elt _start_joint i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _goal_joint
     (write-long (length _goal_joint) s)
     (dotimes (i (length _goal_joint))
       (sys::poke (elt _goal_joint i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _start_joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _start_joint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _start_joint i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _goal_joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_joint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goal_joint i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass pp_msgs::MoveItPluginResponse
  :super ros::object
  :slots (_plan ))

(defmethod pp_msgs::MoveItPluginResponse
  (:init
   (&key
    ((:plan __plan) (instance trajectory_msgs::JointTrajectory :init))
    )
   (send-super :init)
   (setq _plan __plan)
   self)
  (:plan
   (&rest __plan)
   (if (keywordp (car __plan))
       (send* _plan __plan)
     (progn
       (if __plan (setq _plan (car __plan)))
       _plan)))
  (:serialization-length
   ()
   (+
    ;; trajectory_msgs/JointTrajectory _plan
    (send _plan :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; trajectory_msgs/JointTrajectory _plan
       (send _plan :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; trajectory_msgs/JointTrajectory _plan
     (send _plan :deserialize buf ptr-) (incf ptr- (send _plan :serialization-length))
   ;;
   self)
  )

(defclass pp_msgs::MoveItPlugin
  :super ros::object
  :slots ())

(setf (get pp_msgs::MoveItPlugin :md5sum-) "7cd51e786e5ea2edaffb4c8c1c95c872")
(setf (get pp_msgs::MoveItPlugin :datatype-) "pp_msgs/MoveItPlugin")
(setf (get pp_msgs::MoveItPlugin :request) pp_msgs::MoveItPluginRequest)
(setf (get pp_msgs::MoveItPlugin :response) pp_msgs::MoveItPluginResponse)

(defmethod pp_msgs::MoveItPluginRequest
  (:response () (instance pp_msgs::MoveItPluginResponse :init)))

(setf (get pp_msgs::MoveItPluginRequest :md5sum-) "7cd51e786e5ea2edaffb4c8c1c95c872")
(setf (get pp_msgs::MoveItPluginRequest :datatype-) "pp_msgs/MoveItPluginRequest")
(setf (get pp_msgs::MoveItPluginRequest :definition-)
      "string[] joint_names
float64[] start_joint
float64[] goal_joint
---
trajectory_msgs/JointTrajectory plan 

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
")

(setf (get pp_msgs::MoveItPluginResponse :md5sum-) "7cd51e786e5ea2edaffb4c8c1c95c872")
(setf (get pp_msgs::MoveItPluginResponse :datatype-) "pp_msgs/MoveItPluginResponse")
(setf (get pp_msgs::MoveItPluginResponse :definition-)
      "string[] joint_names
float64[] start_joint
float64[] goal_joint
---
trajectory_msgs/JointTrajectory plan 

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
")



(provide :pp_msgs/MoveItPlugin "7cd51e786e5ea2edaffb4c8c1c95c872")


