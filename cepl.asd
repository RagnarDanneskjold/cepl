;;; cepl.asd

#+sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (sb-int:set-floating-point-modes :traps nil))

(asdf:defsystem #:cepl
  :description "Fast lispy way to work with OpenGL"
  :author "Chris Bagley (Baggers) <techsnuffle@gmail.com>"
  :license "BSD 2 Clause"
  #+asdf-unicode :encoding #+asdf-unicode :utf-8
  :serial t
  :depends-on (#:cffi
               #:uiop
               #:cl-opengl
               #:cl-ppcre
               #:documentation-utils
               #:ieee-floats
               #:varjo
               #:bordeaux-threads
               #:cepl.build
               #:alexandria)
  :components ((:file "package")
               (:file "host/api-api")
               (:file "host/api-generics")
               (:file "host/api-0")
               (:file "host/api-1")
               (:file "host/api-2")
               (:file "host/api-common")
               (:file "core/ffi")
               (:file "core/early")
               (:file "core/utils")
               (:file "project")
               (:file "core/context/documentation-functions")
               (:file "core/lifecycle")
               (:file "core/measurements/measurements")
               (:file "core/memory/memory")
               (:file "core/types/math")
               (:file "core/types/cepl-types")
               (:file "core/types/checks")
               (:file "core/types/nulls-and-uninitialized")
               (:file "core/context/gl-context")
               (:file "core/context/types")
               (:file "core/context/cepl-context")
               (:file "core/context/surface")
               (:file "core/context/delayed-resource-init")
               (:file "core/context/version")
               (:file "core/blending/blending")
               (:file "core/stencil/stencil")
               (:file "core/stencil/mask")
               (:file "core/scissor/scissor")
               (:file "core/color/color")
               (:file "core/pixel-store/pixel-store")
               (:file "core/depth/depth")
               (:file "core/face/face")
               (:file "core/types/initalized-p")
               (:file "core/internals")
               (:file "core/types/types")
               (:file "core/errors")
               (:file "core/viewports/viewport")
               (:file "core/types/image-format")
               (:file "core/types/pixel-format")
               (:file "core/types/cffi-extra-primitive-types")
               (:file "core/types/cffi-helpers")
               (:file "core/c-arrays/def")
               (:file "core/c-arrays/aref-c")
               (:file "core/c-arrays/populate")
               (:file "core/c-arrays/make")
               (:file "core/c-arrays/map")
               (:file "core/c-arrays/rest")
               (:file "core/types/layout")
               (:file "core/types/structs")
               (:file "core/gpu-buffers/gpu-buffers")
               (:file "core/gpu-arrays/buffer-backed")
               (:file "core/vaos/vaos")
               (:file "core/streams/buffer-streams")
               (:file "core/transform-feedback/transform-feedback")
               (:file "core/pipelines/compile-context")
               (:file "core/pipelines/generics")
               (:file "core/pipelines/uniforms")
               (:file "core/pipelines/gpu-macros")
               (:file "core/pipelines/gpu-pipeline-base")
               (:file "core/pipelines/pipeline-validation")
               (:file "core/pipelines/funcall-g")
               (:file "core/pipelines/gpu-functions")
               (:file "core/pipelines/glsl-stages")
               (:file "core/pipelines/mapg-context")
               (:file "core/pipelines/uniform-assigners-generation")
               (:file "core/pipelines/programs")
               (:file "core/pipelines/defpipeline")
               (:file "core/pipelines/gpu-lambda")
               (:file "core/pipelines/bake")
               (:file "core/textures/def")
               (:file "core/samplers/samplers")
               (:file "core/textures/textures")
               (:file "core/textures/texture-samplers")
               (:file "core/render-buffers/render-buffer")
               (:file "core/samplers/context")
               (:file "core/pipelines/map-g")
               (:file "core/pipelines/quad-stages")
               (:file "core/gpu-arrays/texture-backed")
               (:file "core/gpu-arrays/with-and-push")
               (:file "core/fbos/fbo")
               (:file "core/ubos/ubo")
               (:file "core/ssbos/ssbos")
               (:file "core/sync/sync")
               (:file "core/queries/query")
               (:file "core/compute/compute")
               (:file "core/types/predefined/gpu-structs")
               (:file "core/context/make")
               (:file "core/context/known-state-blocks")
               (:file "core/repl")
               ;;---
               (:file "docs/api/package")
               (:file "core/types/docs-image-formats")
               (:file "core/types/docs-pixel-formats")
               (:file "core/types/predefined/docs")
               (:file "core/types/docs")
               (:file "core/measurements/docs")
               (:file "core/memory/docs")
               (:file "core/c-arrays/docs")
               (:file "core/gpu-buffers/docs")
               (:file "core/gpu-arrays/docs")
               (:file "core/streams/docs")
               (:file "core/viewports/docs")
               (:file "core/textures/docs")
               (:file "core/samplers/docs")
               (:file "core/fbos/docs")
               (:file "core/blending/docs")
               (:file "core/ubos/docs")
               (:file "core/ssbos/docs")
               (:file "core/vaos/docs")
               (:file "core/pipelines/docs")))
