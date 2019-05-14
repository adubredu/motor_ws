
(cl:in-package :asdf)

(defsystem "set_pose-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SetPoseAction" :depends-on ("_package_SetPoseAction"))
    (:file "_package_SetPoseAction" :depends-on ("_package"))
    (:file "SetPoseActionFeedback" :depends-on ("_package_SetPoseActionFeedback"))
    (:file "_package_SetPoseActionFeedback" :depends-on ("_package"))
    (:file "SetPoseActionGoal" :depends-on ("_package_SetPoseActionGoal"))
    (:file "_package_SetPoseActionGoal" :depends-on ("_package"))
    (:file "SetPoseActionResult" :depends-on ("_package_SetPoseActionResult"))
    (:file "_package_SetPoseActionResult" :depends-on ("_package"))
    (:file "SetPoseFeedback" :depends-on ("_package_SetPoseFeedback"))
    (:file "_package_SetPoseFeedback" :depends-on ("_package"))
    (:file "SetPoseGoal" :depends-on ("_package_SetPoseGoal"))
    (:file "_package_SetPoseGoal" :depends-on ("_package"))
    (:file "SetPoseResult" :depends-on ("_package_SetPoseResult"))
    (:file "_package_SetPoseResult" :depends-on ("_package"))
  ))