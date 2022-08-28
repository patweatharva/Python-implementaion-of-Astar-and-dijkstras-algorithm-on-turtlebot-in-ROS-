;; Auto-generated. Do not edit!


(when (boundp 'pp_msgs::PathPlanningPlugin)
  (if (not (find-package "PP_MSGS"))
    (make-package "PP_MSGS"))
  (shadow 'PathPlanningPlugin (find-package "PP_MSGS")))
(unless (find-package "PP_MSGS::PATHPLANNINGPLUGIN")
  (make-package "PP_MSGS::PATHPLANNINGPLUGIN"))
(unless (find-package "PP_MSGS::PATHPLANNINGPLUGINREQUEST")
  (make-package "PP_MSGS::PATHPLANNINGPLUGINREQUEST"))
(unless (find-package "PP_MSGS::PATHPLANNINGPLUGINRESPONSE")
  (make-package "PP_MSGS::PATHPLANNINGPLUGINRESPONSE"))

(in-package "ROS")





(defclass pp_msgs::PathPlanningPluginRequest
  :super ros::object
  :slots (_costmap_ros _width _height _start _goal ))

(defmethod pp_msgs::PathPlanningPluginRequest
  (:init
   (&key
    ((:costmap_ros __costmap_ros) (make-array 0 :initial-element 0 :element-type :integer))
    ((:width __width) 0)
    ((:height __height) 0)
    ((:start __start) 0)
    ((:goal __goal) 0)
    )
   (send-super :init)
   (setq _costmap_ros __costmap_ros)
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _start (round __start))
   (setq _goal (round __goal))
   self)
  (:costmap_ros
   (&optional __costmap_ros)
   (if __costmap_ros (setq _costmap_ros __costmap_ros)) _costmap_ros)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:serialization-length
   ()
   (+
    ;; int32[] _costmap_ros
    (* 4    (length _costmap_ros)) 4
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; int32 _start
    4
    ;; int32 _goal
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _costmap_ros
     (write-long (length _costmap_ros) s)
     (dotimes (i (length _costmap_ros))
       (write-long (elt _costmap_ros i) s)
       )
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _start
       (write-long _start s)
     ;; int32 _goal
       (write-long _goal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _costmap_ros
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _costmap_ros (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _costmap_ros i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _start
     (setq _start (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _goal
     (setq _goal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pp_msgs::PathPlanningPluginResponse
  :super ros::object
  :slots (_plan ))

(defmethod pp_msgs::PathPlanningPluginResponse
  (:init
   (&key
    ((:plan __plan) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _plan __plan)
   self)
  (:plan
   (&optional __plan)
   (if __plan (setq _plan __plan)) _plan)
  (:serialization-length
   ()
   (+
    ;; int32[] _plan
    (* 4    (length _plan)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _plan
     (write-long (length _plan) s)
     (dotimes (i (length _plan))
       (write-long (elt _plan i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _plan
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plan (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _plan i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass pp_msgs::PathPlanningPlugin
  :super ros::object
  :slots ())

(setf (get pp_msgs::PathPlanningPlugin :md5sum-) "9d98043111b72f254c7b31083eb22c8c")
(setf (get pp_msgs::PathPlanningPlugin :datatype-) "pp_msgs/PathPlanningPlugin")
(setf (get pp_msgs::PathPlanningPlugin :request) pp_msgs::PathPlanningPluginRequest)
(setf (get pp_msgs::PathPlanningPlugin :response) pp_msgs::PathPlanningPluginResponse)

(defmethod pp_msgs::PathPlanningPluginRequest
  (:response () (instance pp_msgs::PathPlanningPluginResponse :init)))

(setf (get pp_msgs::PathPlanningPluginRequest :md5sum-) "9d98043111b72f254c7b31083eb22c8c")
(setf (get pp_msgs::PathPlanningPluginRequest :datatype-) "pp_msgs/PathPlanningPluginRequest")
(setf (get pp_msgs::PathPlanningPluginRequest :definition-)
      "int32[] costmap_ros
int32 width
int32 height
int32 start
int32 goal 
---
int32[] plan
")

(setf (get pp_msgs::PathPlanningPluginResponse :md5sum-) "9d98043111b72f254c7b31083eb22c8c")
(setf (get pp_msgs::PathPlanningPluginResponse :datatype-) "pp_msgs/PathPlanningPluginResponse")
(setf (get pp_msgs::PathPlanningPluginResponse :definition-)
      "int32[] costmap_ros
int32 width
int32 height
int32 start
int32 goal 
---
int32[] plan
")



(provide :pp_msgs/PathPlanningPlugin "9d98043111b72f254c7b31083eb22c8c")


