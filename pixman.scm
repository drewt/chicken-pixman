;; Copyright 2019 Drew Thoreson
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to
;; deal in the Software without restriction, including without limitation the
;; rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
;; sell copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;; FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
;; IN THE SOFTWARE.

(foreign-declare "#include <pixman.h>")

(module (pixman)
        (;pixman-fixed-e
         ;pixman-fixed-1
         ;pixman-fixed-1-minus-e
         ;pixman-fixed-minus-1
         ;pixman-fixed-to-int
         ;pixman-int-to-fixed
         ;pixman-fixed-to-double
         ;pixman-double-to-fixed
         ;pixman-fixed-frac
         ;pixman-fixed-floor
         ;pixman-fixed-ceil
         ;pixman-fixed-fraction
         ;pixman-fixed-mod-2
         ;pixman-max-fixed-48-16
         ;pixman-min-fixed-48-16

         pixman-color-red
         pixman-color-green
         pixman-color-blue
         pixman-color-alpha

         pixman-point-fixed-x
         pixman-point-fixed-y

         pixman-line-fixed-p1
         pixman-line-fixed-p2

         pixman-vector
         pixman-transform

         pixman-transform-init-identity
         pixman-transform-point-3d
         pixman-transform-point
         pixman-transform-multiply
         pixman-transform-init-scale
         pixman-transform-scale
         pixman-transform-init-rotate
         pixman-transform-rotate
         pixman-transform-init-translate
         pixman-transform-translate
         pixman-transform-bounds
         pixman-transform-invert
         pixman-transform-is-identity?
         pixman-transform-is-scale?
         pixman-transform-is-int-translate?
         pixman-transform-is-inverse?

         pixman-f-vector
         pixman-f-transform

         pixman-transform-from-pixman-f-transform
         pixman-f-transform-from-pixman-transform
         pixman-f-transform-invert
         pixman-f-transform-point
         pixman-f-transform-point-3d
         pixman-f-transform-multiply
         pixman-f-transform-init-scale
         pixman-f-transform-scale
         pixman-f-transform-init-rotate
         pixman-f-transform-rotate
         pixman-f-transform-init-translate
         pixman-f-transform-translate
         pixman-f-transform-bounds
         pixman-f-transform-init-identity

         pixman-repeat/none
         pixman-repeat/normal
         pixman-repeat/pad
         pixman-repeat/reflect

         pixman-filter/fast
         pixman-filter/good
         pixman-filter/best
         pixman-filter/nearest
         pixman-filter/bilinear
         pixman-filter/convolution
         pixman-filter/separable-convolution

         pixman-op/clear
         pixman-op/src
         pixman-op/dst
         pixman-op/over
         pixman-op/over-reverse
         pixman-op/in
         pixman-op/in-reverse
         pixman-op/out
         pixman-op/out-reverse
         pixman-op/atop
         pixman-op/atop-reverse
         pixman-op/xor
         pixman-op/add
         pixman-op/saturate
         pixman-op/disjoint-clear
         pixman-op/disjoint-src
         pixman-op/disjoint-dst
         pixman-op/disjoint-over
         pixman-op/disjoint-over-reverse
         pixman-op/disjoint-in
         pixman-op/disjoint-in-reverse
         pixman-op/disjoint-out
         pixman-op/disjoint-out-reverse
         pixman-op/disjoint-atop
         pixman-op/disjoint-atop-reverse
         pixman-op/disjoint-xor
         pixman-op/conjoint-clear
         pixman-op/conjoint-src
         pixman-op/conjoint-dst
         pixman-op/conjoint-over
         pixman-op/conjoint-over-reverse
         pixman-op/conjoint-in
         pixman-op/conjoint-in-reverse
         pixman-op/conjoint-out
         pixman-op/conjoint-out-reverse
         pixman-op/conjoint-atop
         pixman-op/conjoint-atop-reverse
         pixman-op/conjoint-xor
         pixman-op/multiply
         pixman-op/screen
         pixman-op/overlay
         pixman-op/darken
         pixman-op/lighten
         pixman-op/color-dodge
         pixman-op/color-burn
         pixman-op/hard-light
         pixman-op/soft-light
         pixman-op/difference
         pixman-op/exclusion
         pixman-op/hsl-hue
         pixman-op/hsl-saturation
         pixman-op/hsl-color
         pixman-op/hsl-luminosity

         pixman-region16-data-size
         pixman-region16-data-num-rects

         pixman-rectangle16-x
         pixman-rectangle16-y
         pixman-rectangle16-width
         pixman-rectangle16-height

         pixman-box16-x1
         pixman-box16-y1
         pixman-box16-x2
         pixman-box16-y2

         make-pixman-region16
         pixman-region16-extents
         pixman-region16-data

         pixman-region/out
         pixman-region/in
         pixman-region/part

         pixman-region-set-static-pointers
         pixman-region-init
         pixman-region-init-rect
         pixman-region-init-rects
         pixman-region-init-with-extents
         pixman-region-init-from-image
         pixman-region-fini
         pixman-region-translate
         pixman-region-copy
         pixman-region-intersect
         pixman-region-union
         pixman-region-union-rect
         pixman-region-intersect-rect
         pixman-region-subtract
         pixman-region-inverse
         pixman-region-contains-point?
         pixman-region-contains-rectangle?
         pixman-region-not-empty?
         pixman-region-extents
         pixman-region-n-rects
         pixman-region-rectangles
         pixman-region-equal?
         pixman-region-selfcheck
         pixman-region-reset
         pixman-region-clear

         pixman-region32-data-size
         pixman-region32-data-num-rects

         pixman-rectangle32-x
         pixman-rectangle32-y
         pixman-rectangle32-width
         pixman-rectangle32-height

         pixman-box32-x1
         pixman-box32-y1
         pixman-box32-x2
         pixman-box32-y2

         make-pixman-region32
         pixman-region32-extents
         pixman-region32-data

         pixman-region32-init
         pixman-region32-init-rect
         pixman-region32-init-rects
         pixman-region32-init-with-extents
         pixman-region32-init-from-image
         pixman-region32-fini
         pixman-region32-translate
         pixman-region32-copy
         pixman-region32-intersect
         pixman-region32-union
         pixman-region32-intersect-rect
         pixman-region32-union-rect
         pixman-region32-subtract
         pixman-region32-inverse
         pixman-region32-contains-point?
         pixman-region32-contains-rectangle?
         pixman-region32-not-empty?
         pixman-region32-extents
         pixman-region32-n-rects
         pixman-region32-rectangles
         pixman-region32-equal?
         pixman-region32-selfcheck
         pixman-region32-reset
         pixman-region32-clear

         pixman-blt
         pixman-fill
         pixman-version
         pixman-version-string

         pixman-gradient-stop-x
         pixman-gradient-stop-color

         pixman-max-indexed
         pixman-indexed-color
         pixman-indexed-rgba
         pixman-indexed-ent

         ;pixman-format
         ;pixman-format-byte
         ;pixman-format-reshift
         ;pixman-format-bpp
         ;pixman-format-shift
         ;pixman-format-type
         ;pixman-format-a
         ;pixman-format-r
         ;pixman-format-g
         ;pixman-format-b
         ;pixman-format-rgb
         ;pixman-format-vis
         ;pixman-format-depth

         pixman-type-other
         pixman-type-a
         pixman-type-argb
         pixman-type-abgr
         pixman-type-color
         pixman-type-gray
         pixman-type-yuy2
         pixman-type-yv12
         pixman-type-bgra
         pixman-type-rgba
         pixman-type-argb-srgb
         pixman-type-rgba-float

         ;pixman-format-color

         pixman-rgba-float
         pixman-rgb-float
         pixman-a8r8g8b8
         pixman-x8r8g8b8
         pixman-a8b8g8r8
         pixman-x8b8g8r8
         pixman-b8g8r8a8
         pixman-b8g8r8x8
         pixman-r8g8b8a8
         pixman-r8g8b8x8
         pixman-x14r6g6b6
         pixman-x2r10g10b10
         pixman-a2r10g10b10
         pixman-x2b10g10r10
         pixman-a2b10g10r10
         pixman-a8r8g8b8-sRGB
         pixman-r8g8b8
         pixman-b8g8r8
         pixman-r5g6b5
         pixman-b5g6r5
         pixman-a1r5g5b5
         pixman-x1r5g5b5
         pixman-a1b5g5r5
         pixman-x1b5g5r5
         pixman-a4r4g4b4
         pixman-x4r4g4b4
         pixman-a4b4g4r4
         pixman-x4b4g4r4
         pixman-a8
         pixman-r3g3b2
         pixman-b2g3r3
         pixman-a2r2g2b2
         pixman-a2b2g2r2
         pixman-c8
         pixman-g8
         pixman-x4a4
         pixman-x4c4
         pixman-x4g4
         pixman-a4
         pixman-r1g2b1
         pixman-b1g2r1
         pixman-a1r1g1b1
         pixman-a1b1g1r1
         pixman-c4
         pixman-g4
         pixman-a1
         pixman-g1
         pixman-yuy2
         pixman-yv12

         pixman-format-supported-destination
         pixman-format-supported-source
         pixman-image-create-solid-fill
         pixman-image-create-linear-gradient
         pixman-image-create-radial-gradient
         pixman-image-create-conical-gradient
         pixman-image-create-bits
         pixman-image-create-bits-no-clear
         pixman-image-ref
         pixman-image-unref
         pixman-image-set-destroy-function
         pixman-image-get-destroy-data
         pixman-image-set-clip-region
         pixman-image-set-clip-region32
         pixman-image-set-has-client-clip
         pixman-image-set-transform
         pixman-image-set-repeat
         pixman-image-set-filter
         pixman-image-set-source-clipping
         pixman-image-set-alpha-map
         pixman-image-set-component-alpha
         pixman-image-get-component-alpha
         pixman-image-set-accessors
         pixman-image-set-indexed
         pixman-image-get-data
         pixman-image-get-width
         pixman-image-get-height
         pixman-image-get-stride
         pixman-image-get-depth
         pixman-image-get-format

         pixman-kernel/impulse
         pixman-kernel/box
         pixman-kernel/linear
         pixman-kernel/cubic
         pixman-kernel/gaussian
         pixman-kernel/lanczos2
         pixman-kernel/lanczos3
         pixman-kernel/lanczos3-stretched

         pixman-filter-create-separable-convolution
         pixman-image-fill-rectangles
         pixman-image-fill-boxes
         pixman-compute-composite-region
         pixman-image-composite
         pixman-image-composite32
         ;pixman-disable-out-of-bounds-workaround ; deprecated

         pixman-glyph-x
         pixman-glyph-y
         pixman-glyph-glyph

         pixman-glyph-cache-create
         pixman-glyph-cache-destroy
         pixman-glyph-cache-freeze
         pixman-glyph-cache-thaw
         pixman-glyph-cache-lookup
         pixman-glyph-cache-insert
         pixman-glyph-cache-remove
         pixman-glyph-get-extents
         pixman-glyph-get-mask-format
         pixman-composite-glyphs
         pixman-composite-glyphs-no-mask

         pixman-edge-x
         pixman-edge-e
         pixman-edge-stepx
         pixman-edge-signdx
         pixman-edge-dy
         pixman-edge-dx
         pixman-edge-stepx-small
         pixman-edge-stepx-big
         pixman-edge-dx-small
         pixman-edge-dx-big

         pixman-trapezoid-top
         pixman-trapezoid-bottom
         pixman-trapezoid-left
         pixman-trapezoid-right

         pixman-triangle-p1
         pixman-triangle-p2
         pixman-triangle-p3

         ;pixman-trapezoid-valid?

         pixman-span-fix-l
         pixman-span-fix-r
         pixman-span-fix-y

         pixman-sample-ceil-y
         pixman-sample-floor-y
         pixman-edge-step
         pixman-edge-init
         pixman-line-fixed-edge-init
         pixman-rasterize-edges
         pixman-add-traps
         pixman-add-trapezoids
         pixman-rasterize-trapezoid
         pixman-composite-trapezoids
         pixman-composite-triangles
         pixman-add-triangles)
  (import (scheme)
          (srfi 1)
          (chicken base)
          (chicken foreign)
          (chicken gc)
          (chicken memory)
          (foreigners)
          (bind))

  (bind-options export-constants: #t
                mutable-fields: #t
                default-renaming: "")
  (bind-rename pixman_region_rectangles %pixman-region-rectangles)
  (bind-rename pixman_region32_rectangles %pixman-region32-rectangles)
  (bind-file "pixman.h")

  (define pixman-transform-is-scale? pixman-transform-is-scale)
  (define pixman-transform-is-int-translate? pixman-transform-is-int-translate)
  (define pixman-transform-is-inverse? pixman-transform-is-inverse)
  (define pixman-transform-is-identity? pixman-transform-is-identity)
  (define pixman-region-contains-point? pixman-region-contains-point)
  (define pixman-region-contains-rectangle? pixman-region-contains-rectangle)
  (define pixman-region-not-empty? pixman-region-not-empty)
  (define pixman-region-equal? pixman-region-equal)
  (define pixman-region32-contains-point? pixman-region32-contains-point)
  (define pixman-region32-contains-rectangle? pixman-region32-contains-rectangle)
  (define pixman-region32-not-empty? pixman-region32-not-empty)
  (define pixman-region32-equal? pixman-region32-equal)

  ; Define a series of foreign values of the same type.
  (define-syntax define-foreign-values
    (syntax-rules ()
      ((define-foreign-values type)
        (begin))
      ((define-foreign-values type (scm-name c-name) . rest)
        (begin
          (define scm-name (foreign-value c-name type))
          (define-foreign-values type . rest)))))

  (define-foreign-record-type (pixman-line-fixed* "struct pixman_line_fixed")
    ((struct "pixman_point_fixed") p1 pixman-line-fixed-p1)
    ((struct "pixman_point_fixed") p2 pixman-line-fixed-p2))

  (define pixman-vector #f) ;TODO
  (define pixman-transform #f) ;TODO
  (define pixman-f-vector #f) ;TODO
  (define pixman-f-transform #f) ;TODO

  ; pixman_repeat_t
  (define-foreign-values int
    (pixman-repeat/none    "PIXMAN_REPEAT_NONE")
    (pixman-repeat/normal  "PIXMAN_REPEAT_NORMAL")
    (pixman-repeat/pad     "PIXMAN_REPEAT_PAD")
    (pixman-repeat/reflect "PIXMAN_REPEAT_REFLECT"))

  ; pixman_filter_t
  (define-foreign-values int
    (pixman-filter/fast                  "PIXMAN_FILTER_FAST")
    (pixman-filter/good                  "PIXMAN_FILTER_GOOD")
    (pixman-filter/best                  "PIXMAN_FILTER_BEST")
    (pixman-filter/nearest               "PIXMAN_FILTER_NEAREST")
    (pixman-filter/bilinear              "PIXMAN_FILTER_BILINEAR")
    (pixman-filter/convolution           "PIXMAN_FILTER_CONVOLUTION")
    (pixman-filter/separable-convolution "PIXMAN_FILTER_SEPARABLE_CONVOLUTION"))

  ; pixman_op_t
  (define-foreign-values int
    (pixman-op/clear                 "PIXMAN_OP_CLEAR")
    (pixman-op/src                   "PIXMAN_OP_SRC")
    (pixman-op/dst                   "PIXMAN_OP_DST")
    (pixman-op/over                  "PIXMAN_OP_OVER")
    (pixman-op/over-reverse          "PIXMAN_OP_OVER_REVERSE")
    (pixman-op/in                    "PIXMAN_OP_IN")
    (pixman-op/in-reverse            "PIXMAN_OP_IN_REVERSE")
    (pixman-op/out                   "PIXMAN_OP_OUT")
    (pixman-op/out-reverse           "PIXMAN_OP_OUT_REVERSE")
    (pixman-op/atop                  "PIXMAN_OP_ATOP")
    (pixman-op/atop-reverse          "PIXMAN_OP_ATOP_REVERSE")
    (pixman-op/xor                   "PIXMAN_OP_XOR")
    (pixman-op/add                   "PIXMAN_OP_ADD")
    (pixman-op/saturate              "PIXMAN_OP_SATURATE")
    (pixman-op/disjoint-clear        "PIXMAN_OP_DISJOINT_CLEAR")
    (pixman-op/disjoint-src          "PIXMAN_OP_DISJOINT_SRC")
    (pixman-op/disjoint-dst          "PIXMAN_OP_DISJOINT_DST")
    (pixman-op/disjoint-over         "PIXMAN_OP_DISJOINT_OVER")
    (pixman-op/disjoint-over-reverse "PIXMAN_OP_DISJOINT_OVER_REVERSE")
    (pixman-op/disjoint-in           "PIXMAN_OP_DISJOINT_IN")
    (pixman-op/disjoint-in-reverse   "PIXMAN_OP_DISJOINT_IN_REVERSE")
    (pixman-op/disjoint-out          "PIXMAN_OP_DISJOINT_OUT")
    (pixman-op/disjoint-out-reverse  "PIXMAN_OP_DISJOINT_OUT_REVERSE")
    (pixman-op/disjoint-atop         "PIXMAN_OP_DISJOINT_ATOP")
    (pixman-op/disjoint-atop-reverse "PIXMAN_OP_DISJOINT_ATOP_REVERSE")
    (pixman-op/disjoint-xor          "PIXMAN_OP_DISJOINT_XOR")
    (pixman-op/conjoint-clear        "PIXMAN_OP_CONJOINT_CLEAR")
    (pixman-op/conjoint-src          "PIXMAN_OP_CONJOINT_SRC")
    (pixman-op/conjoint-dst          "PIXMAN_OP_CONJOINT_DST")
    (pixman-op/conjoint-over         "PIXMAN_OP_CONJOINT_OVER")
    (pixman-op/conjoint-over-reverse "PIXMAN_OP_CONJOINT_OVER_REVERSE")
    (pixman-op/conjoint-in           "PIXMAN_OP_CONJOINT_IN")
    (pixman-op/conjoint-in-reverse   "PIXMAN_OP_CONJOINT_IN_REVERSE")
    (pixman-op/conjoint-out          "PIXMAN_OP_CONJOINT_OUT")
    (pixman-op/conjoint-out-reverse  "PIXMAN_OP_CONJOINT_OUT_REVERSE")
    (pixman-op/conjoint-atop         "PIXMAN_OP_CONJOINT_ATOP")
    (pixman-op/conjoint-atop-reverse "PIXMAN_OP_CONJOINT_ATOP_REVERSE")
    (pixman-op/conjoint-xor          "PIXMAN_OP_CONJOINT_XOR")
    (pixman-op/multiply              "PIXMAN_OP_MULTIPLY")
    (pixman-op/screen                "PIXMAN_OP_SCREEN")
    (pixman-op/overlay               "PIXMAN_OP_OVERLAY")
    (pixman-op/darken                "PIXMAN_OP_DARKEN")
    (pixman-op/lighten               "PIXMAN_OP_LIGHTEN")
    (pixman-op/color-dodge           "PIXMAN_OP_COLOR_DODGE")
    (pixman-op/color-burn            "PIXMAN_OP_COLOR_BURN")
    (pixman-op/hard-light            "PIXMAN_OP_HARD_LIGHT")
    (pixman-op/soft-light            "PIXMAN_OP_SOFT_LIGHT")
    (pixman-op/difference            "PIXMAN_OP_DIFFERENCE")
    (pixman-op/exclusion             "PIXMAN_OP_EXCLUSION")
    (pixman-op/hsl-hue               "PIXMAN_OP_HSL_HUE")
    (pixman-op/hsl-saturation        "PIXMAN_OP_HSL_SATURATION")
    (pixman-op/hsl-color             "PIXMAN_OP_HSL_COLOR")
    (pixman-op/hsl-luminosity        "PIXMAN_OP_HSL_LUMINOSITY"))

  ; pixman_region_overlap_t
  (define-foreign-values int
    (pixman-region/out  "PIXMAN_REGION_OUT")
    (pixman-region/in   "PIXMAN_REGION_IN")
    (pixman-region/part "PIXMAN_REGION_PART"))

  (define-foreign-record-type (pixman_region16* "struct pixman_region16")
    (constructor: %make-pixman-region16)
    (destructor:  free-pixman-region16)
    ((struct "pixman_box16") extents pixman-region16-extents)
    ((c-pointer (struct "pixman_region16_data")) data pixman-region16-data))

  (define (make-pixman-region16)
    (let ((region (%make-pixman-region16)))
      (pixman-region-init region)
      (set-finalizer! region free-pixman-region16)
      region))

  (define-foreign-record-type (pixman-region32* "struct pixman_region32")
    (constructor: %make-pixman-region32)
    (destructor:  free-pixman-region32)
    ((struct "pixman_box32") extents pixman-region32-extents)
    ((c-pointer (struct "pixman_region32_data")) data pixman-region32-data))

  (define (make-pixman-region32)
    (let ((region (%make-pixman-region32)))
      (pixman-region32-init region)
      (set-finalizer! region free-pixman-region32)
      region))

  (define-foreign-record-type (pixman-gradient-stop* "struct pixman_gradient_stop")
    (int32 x pixman-gradient-stop-x)
    ((struct "pixman_color") color pixman-gradient-stop-color))

  (define pixman-indexed-rgba #f) ;TODO
  (define pixman-indexed-ent #f) ;TODO

  (define-foreign-values int
    (pixman-rgba-float    "PIXMAN_rgba_float")
    (pixman-rgb-float     "PIXMAN_rgb_float")
    (pixman-a8r8g8b8      "PIXMAN_a8r8g8b8")
    (pixman-x8r8g8b8      "PIXMAN_x8r8g8b8")
    (pixman-a8b8g8r8      "PIXMAN_a8b8g8r8")
    (pixman-x8b8g8r8      "PIXMAN_x8b8g8r8")
    (pixman-b8g8r8a8      "PIXMAN_b8g8r8a8")
    (pixman-b8g8r8x8      "PIXMAN_b8g8r8x8")
    (pixman-r8g8b8a8      "PIXMAN_r8g8b8a8")
    (pixman-r8g8b8x8      "PIXMAN_r8g8b8x8")
    (pixman-x14r6g6b6     "PIXMAN_x14r6g6b6")
    (pixman-x2r10g10b10   "PIXMAN_x2r10g10b10")
    (pixman-a2r10g10b10   "PIXMAN_a2r10g10b10")
    (pixman-x2b10g10r10   "PIXMAN_x2b10g10r10")
    (pixman-a2b10g10r10   "PIXMAN_a2b10g10r10")
    (pixman-a8r8g8b8-sRGB "PIXMAN_a8r8g8b8_sRGB")
    (pixman-r8g8b8        "PIXMAN_r8g8b8")
    (pixman-b8g8r8        "PIXMAN_b8g8r8")
    (pixman-r5g6b5        "PIXMAN_r5g6b5")
    (pixman-b5g6r5        "PIXMAN_b5g6r5")
    (pixman-a1r5g5b5      "PIXMAN_a1r5g5b5")
    (pixman-x1r5g5b5      "PIXMAN_x1r5g5b5")
    (pixman-a1b5g5r5      "PIXMAN_a1b5g5r5")
    (pixman-x1b5g5r5      "PIXMAN_x1b5g5r5")
    (pixman-a4r4g4b4      "PIXMAN_a4r4g4b4")
    (pixman-x4r4g4b4      "PIXMAN_x4r4g4b4")
    (pixman-a4b4g4r4      "PIXMAN_a4b4g4r4")
    (pixman-x4b4g4r4      "PIXMAN_x4b4g4r4")
    (pixman-a8            "PIXMAN_a8")
    (pixman-r3g3b2        "PIXMAN_r3g3b2")
    (pixman-b2g3r3        "PIXMAN_b2g3r3")
    (pixman-a2r2g2b2      "PIXMAN_a2r2g2b2")
    (pixman-a2b2g2r2      "PIXMAN_a2b2g2r2")
    (pixman-c8            "PIXMAN_c8")
    (pixman-g8            "PIXMAN_g8")
    (pixman-x4a4          "PIXMAN_x4a4")
    (pixman-x4c4          "PIXMAN_x4c4")
    (pixman-x4g4          "PIXMAN_x4g4")
    (pixman-a4            "PIXMAN_a4")
    (pixman-r1g2b1        "PIXMAN_r1g2b1")
    (pixman-b1g2r1        "PIXMAN_b1g2r1")
    (pixman-a1r1g1b1      "PIXMAN_a1r1g1b1")
    (pixman-a1b1g1r1      "PIXMAN_a1b1g1r1")
    (pixman-c4            "PIXMAN_c4")
    (pixman-g4            "PIXMAN_g4")
    (pixman-a1            "PIXMAN_a1")
    (pixman-g1            "PIXMAN_g1")
    (pixman-yuy2          "PIXMAN_yuy2")
    (pixman-yv12          "PIXMAN_yv12"))

  (define-foreign-values int
    (pixman-kernel/impulse            "PIXMAN_KERNEL_IMPULSE")
    (pixman-kernel/box                "PIXMAN_KERNEL_BOX")
    (pixman-kernel/linear             "PIXMAN_KERNEL_LINEAR")
    (pixman-kernel/cubic              "PIXMAN_KERNEL_CUBIC")
    (pixman-kernel/gaussian           "PIXMAN_KERNEL_GAUSSIAN")
    (pixman-kernel/lanczos2           "PIXMAN_KERNEL_LANCZOS2")
    (pixman-kernel/lanczos3           "PIXMAN_KERNEL_LANCZOS3")
    (pixman-kernel/lanczos3-stretched "PIXMAN_KERNEL_LANCZOS3_STRETCHED"))

  (define pixman-glyph-x #f) ;TODO
  (define pixman-glyph-y #f) ;TODO
  (define pixman-glyph-glyph #f) ;TODO

  (define-foreign-record-type (pixman-trapezoid* "struct pixman_trapezoid")
    ((struct "pixman_line_fixed") left pixman-trapezoid-left)
    ((struct "pixman_line_fixed") right pixman-trapezoid-right))

  (define-foreign-record-type (pixman-triangle* "struct pixman_triangle")
    ((struct "pixman_point_fixed") p1 pixman-triangle-p1)
    ((struct "pixman_point_fixed") p2 pixman-triangle-p2)
    ((struct "pixman_point_fixed") p3 pixman-triangle-p3))

  (define-foreign-type pixman-box16* (c-pointer (struct "pixman_box16")))
  (define (pixman-region-rectangles region)
    (let-values (((rects n) (%pixman-region-rectangles region)))
      (map (lambda (i)
             ((foreign-lambda* pixman-box16* ((int i) (pixman-box16* rects))
                "C_return(&rects[i]);")
              i rects))
           (iota n))))

  (define-foreign-type pixman-box32* (c-pointer (struct "pixman_box32")))
  (define (pixman-region32-rectangles region)
    (let-values (((rects n) (%pixman-region32-rectangles region)))
      (map (lambda (i)
             ((foreign-lambda* pixman-box32* ((int i) (pixman-box32* rects))
                "C_return(&rects[i]);")
              i rects))
           (iota n)))))
