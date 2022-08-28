; Auto-generated. Do not edit!


(cl:in-package pp_msgs-srv)


;//! \htmlinclude MoveItPlugin-request.msg.html

(cl:defclass <MoveItPlugin-request> (roslisp-msg-protocol:ros-message)
  ((joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (start_joint
    :reader start_joint
    :initarg :start_joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (goal_joint
    :reader goal_joint
    :initarg :goal_joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MoveItPlugin-request (<MoveItPlugin-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveItPlugin-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveItPlugin-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pp_msgs-srv:<MoveItPlugin-request> is deprecated: use pp_msgs-srv:MoveItPlugin-request instead.")))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <MoveItPlugin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pp_msgs-srv:joint_names-val is deprecated.  Use pp_msgs-srv:joint_names instead.")
  (joint_names m))

(cl:ensure-generic-function 'start_joint-val :lambda-list '(m))
(cl:defmethod start_joint-val ((m <MoveItPlugin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pp_msgs-srv:start_joint-val is deprecated.  Use pp_msgs-srv:start_joint instead.")
  (start_joint m))

(cl:ensure-generic-function 'goal_joint-val :lambda-list '(m))
(cl:defmethod goal_joint-val ((m <MoveItPlugin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pp_msgs-srv:goal_joint-val is deprecated.  Use pp_msgs-srv:goal_joint instead.")
  (goal_joint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveItPlugin-request>) ostream)
  "Serializes a message object of type '<MoveItPlugin-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'joint_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'start_joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'start_joint))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'goal_joint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveItPlugin-request>) istream)
  "Deserializes a message object of type '<MoveItPlugin-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'start_joint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'start_joint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal_joint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_joint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveItPlugin-request>)))
  "Returns string type for a service object of type '<MoveItPlugin-request>"
  "pp_msgs/MoveItPluginRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveItPlugin-request)))
  "Returns string type for a service object of type 'MoveItPlugin-request"
  "pp_msgs/MoveItPluginRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveItPlugin-request>)))
  "Returns md5sum for a message object of type '<MoveItPlugin-request>"
  "7cd51e786e5ea2edaffb4c8c1c95c872")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveItPlugin-request)))
  "Returns md5sum for a message object of type 'MoveItPlugin-request"
  "7cd51e786e5ea2edaffb4c8c1c95c872")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveItPlugin-request>)))
  "Returns full string definition for message of type '<MoveItPlugin-request>"
  (cl:format cl:nil "string[] joint_names~%float64[] start_joint~%float64[] goal_joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveItPlugin-request)))
  "Returns full string definition for message of type 'MoveItPlugin-request"
  (cl:format cl:nil "string[] joint_names~%float64[] start_joint~%float64[] goal_joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveItPlugin-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'start_joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveItPlugin-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveItPlugin-request
    (cl:cons ':joint_names (joint_names msg))
    (cl:cons ':start_joint (start_joint msg))
    (cl:cons ':goal_joint (goal_joint msg))
))
;//! \htmlinclude MoveItPlugin-response.msg.html

(cl:defclass <MoveItPlugin-response> (roslisp-msg-protocol:ros-message)
  ((plan
    :reader plan
    :initarg :plan
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory)))
)

(cl:defclass MoveItPlugin-response (<MoveItPlugin-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveItPlugin-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveItPlugin-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pp_msgs-srv:<MoveItPlugin-response> is deprecated: use pp_msgs-srv:MoveItPlugin-response instead.")))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <MoveItPlugin-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pp_msgs-srv:plan-val is deprecated.  Use pp_msgs-srv:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveItPlugin-response>) ostream)
  "Serializes a message object of type '<MoveItPlugin-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveItPlugin-response>) istream)
  "Deserializes a message object of type '<MoveItPlugin-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveItPlugin-response>)))
  "Returns string type for a service object of type '<MoveItPlugin-response>"
  "pp_msgs/MoveItPluginResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveItPlugin-response)))
  "Returns string type for a service object of type 'MoveItPlugin-response"
  "pp_msgs/MoveItPluginResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveItPlugin-response>)))
  "Returns md5sum for a message object of type '<MoveItPlugin-response>"
  "7cd51e786e5ea2edaffb4c8c1c95c872")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveItPlugin-response)))
  "Returns md5sum for a message object of type 'MoveItPlugin-response"
  "7cd51e786e5ea2edaffb4c8c1c95c872")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveItPlugin-response>)))
  "Returns full string definition for message of type '<MoveItPlugin-response>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory plan ~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveItPlugin-response)))
  "Returns full string definition for message of type 'MoveItPlugin-response"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory plan ~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveItPlugin-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveItPlugin-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveItPlugin-response
    (cl:cons ':plan (plan msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveItPlugin)))
  'MoveItPlugin-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveItPlugin)))
  'MoveItPlugin-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveItPlugin)))
  "Returns string type for a service object of type '<MoveItPlugin>"
  "pp_msgs/MoveItPlugin")