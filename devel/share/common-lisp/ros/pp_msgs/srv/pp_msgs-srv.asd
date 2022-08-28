
(cl:in-package :asdf)

(defsystem "pp_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "MoveItPlugin" :depends-on ("_package_MoveItPlugin"))
    (:file "_package_MoveItPlugin" :depends-on ("_package"))
    (:file "PathPlanningPlugin" :depends-on ("_package_PathPlanningPlugin"))
    (:file "_package_PathPlanningPlugin" :depends-on ("_package"))
  ))