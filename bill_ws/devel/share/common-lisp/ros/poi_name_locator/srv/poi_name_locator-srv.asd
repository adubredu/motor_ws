
(cl:in-package :asdf)

(defsystem "poi_name_locator-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "PoiNameLocator" :depends-on ("_package_PoiNameLocator"))
    (:file "_package_PoiNameLocator" :depends-on ("_package"))
  ))