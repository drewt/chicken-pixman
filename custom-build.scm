#! /usr/bin/env -S csi -script

;;
;; Workaround for lack of pkg-config support in declarative .egg format.
;; Calls pkg-config and adds arguments to the csc command line.
;;

(import (chicken io)
        (chicken process)
        (chicken process-context)
        (chicken string))

(define (read-words-from-command cmdline)
  (call-with-input-pipe cmdline
    (lambda (p)
      (string-split (read-string #f p)))))

(define (arg-prefix prefix args)
  (let loop ((args args) (result '()))
    (if (null? args)
      (reverse result)
      (loop (cdr args) (cons (car args) (cons prefix result))))))

(define cflags  (arg-prefix "-C" (read-words-from-command "pkg-config --cflags pixman-1")))
(define ldflags (arg-prefix "-L" (read-words-from-command "pkg-config --libs pixman-1")))

(process-execute (get-environment-variable "CHICKEN_CSC")
                 (append cflags ldflags (command-line-arguments)))
