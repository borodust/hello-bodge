(cl:in-package :hello-bodge)


(defapp hello-bodge ()
  ((pipeline :initform nil))
  (:viewport-width 1728)
  (:viewport-height 972))


(defmethod configuration-flow ((this hello-bodge))
  (with-slots (pipeline) this
    (for-graphics ()
      (setf pipeline (make-shader-pipeline 'filament-pipeline)))))


(defmethod sweeping-flow ((this hello-bodge))
  (with-slots (pipeline) this
    (for-graphics ()
      (dispose pipeline))))


(defmethod draw ((this hello-bodge))
  (with-slots (pipeline) this
    (gl:clear-color 0.2 0.2 0.2 1.0)
    #++(render t pipeline :primitive :points :vertex-count 1)))
