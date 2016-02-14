;;; -*- mode: lisp; coding: utf-8 -*-
;;; 
;;; This code is derivative of libguess-1.0 and guess-0.1.0 for common lisp.
;;; 
;;; Copyright (c) 2011 zqwell <zqwell@gmail.com>
;;; 
;;; The following is the original copyright notice.
;;; 
;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions
;;; are met:
;;; 
;;; 1. Redistributions of source code must retain the above copyright
;;;    notice, this list of conditions and the following disclaimer.
;;; 
;;; 2. Redistributions in binary form must reproduce the above copyright
;;;    notice, this list of conditions and the following disclaimer in the
;;;    documentation and/or other materials provided with the distribution.
;;; 
;;; 3. Neither the name of the authors nor the names of its contributors
;;;    may be used to endorse or promote products derived from this
;;;    software without specific prior written permission.
;;; 
;;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
;;; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
;;; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
;;; A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
;;; OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
;;; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
;;; TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
;;; PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
;;; LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
;;; NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
;;; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
;;; 
;;; Copyright (c) 2000-2003 Shiro Kawai, All rights reserved.
;;; 

(in-package :guess)


;;; eval-when is needed to compile generate-order
(eval-when (:compile-toplevel :load-toplevel :execute)
  (defun enc-name->keyword (enc)
    (funcall (symbol-function (find-symbol (string-upcase (format nil "~A-keyword" (symbol-name enc))) :guess))))
  
;;;; japanese (:jp)
  (defun iso-2022-jp-keyword () ;; jis
    #+clisp 'charset:iso-2022-jp
    ;; #+allegro :jis
    ;; #+lispworks :jis
    #-clisp :jis)

  ;; (defun jis-keyword ())

  (defun eucj-keyword ()
    #+clisp 'charset:euc-jp
    #-clisp :euc-jp)
  (defun sjis-keyword ()
    #+clisp 'charset:shift-jis
    #-clisp :sjis)
  (defun utf8-keyword ()
    #+clisp 'charset:utf-8
    #-clisp :utf-8)

;;;; unicode
  (defun ucs-2le-keyword () :ucs-2le)
  (defun ucs-2be-keyword () :ucs-2be)
  (defun utf16-keyword   () :utf-16)

;;;; taiwanese (:tw)
  (defun big5-keyword () :big5)
  (defun iso-2022-tw-keyword () :iso-2022-tw)

;;;; chinese (:cn)
  (defun gb2312-keyword      () :gb2312)
  (defun gb18030-keyword     () :gb18030)
  (defun iso-2022-cn-keyword () :iso-2022-cn)
  
;;;; korean (:kr)
  (defun euck-keyword  () :euc-kr)
  (defun johab-keyword () :johab)
  (defun iso-2022-kr-keyword () :iso-2022-kr)
  
;;;; arabic (:ar)
  (defun iso8859-6-keyword () :iso8859-6)
  (defun cp1256-keyword    () :cp1256)

;;;; greek (:gr)
  (defun iso8859-7-keyword () :iso8859-7)
  (defun cp1253-keyword    () :cp1253)

;;;; hebrew (:hw)
  (defun iso8859-8-keyword () :iso8859-8)
  (defun cp1255-keyword    () :cp1255)

;;;; turkish (:tr)
  (defun iso8859-9-keyword () :iso8859-9)
  (defun cp1254-keyword    () :cp1254)

;;;; russian (:ru)
  (defun iso8859-5-keyword () :iso8859-5)
  (defun koi8-r-keyword    () :koi8-r)
  (defun koi8-u-keyword    () :koi8-u)
  (defun cp866-keyword     () :cp866)
  (defun cp1251-keyword    ()  :cp1251)

;;;; polish (:pl)
  (defun iso8859-2-keyword ()  :iso8859-2)
  (defun cp1250-keyword    ()  :cp1250)

;;;; baltic (:bl)
  (defun iso8859-13-keyword ()  :iso8859-13)
  (defun cp1257-keyword     ()  :cp1257)
  ) ;; eval-when
