
(cl:in-package :asdf)

(defsystem "poi_scan-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PoiScanAction" :depends-on ("_package_PoiScanAction"))
    (:file "_package_PoiScanAction" :depends-on ("_package"))
    (:file "PoiScanActionFeedback" :depends-on ("_package_PoiScanActionFeedback"))
    (:file "_package_PoiScanActionFeedback" :depends-on ("_package"))
    (:file "PoiScanActionGoal" :depends-on ("_package_PoiScanActionGoal"))
    (:file "_package_PoiScanActionGoal" :depends-on ("_package"))
    (:file "PoiScanActionResult" :depends-on ("_package_PoiScanActionResult"))
    (:file "_package_PoiScanActionResult" :depends-on ("_package"))
    (:file "PoiScanFeedback" :depends-on ("_package_PoiScanFeedback"))
    (:file "_package_PoiScanFeedback" :depends-on ("_package"))
    (:file "PoiScanGoal" :depends-on ("_package_PoiScanGoal"))
    (:file "_package_PoiScanGoal" :depends-on ("_package"))
    (:file "PoiScanResult" :depends-on ("_package_PoiScanResult"))
    (:file "_package_PoiScanResult" :depends-on ("_package"))
  ))