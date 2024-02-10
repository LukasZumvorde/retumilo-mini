(use-modules (guix packages)
             (guix licenses)
             (guix git-download)
             (guix build-system asdf)
			 (gnu packages lisp-xyz)
			 (gnu packages lisp-check))

(define-public retumilo-mini
  (package
    (name "retumilo-mini")
    (version "0.1.0")
    (home-page "https://github.com/LukasZumvorde/retumilo-mini")
    (synopsis "bare bones web browser")
    (description "A super bare bones webkit based web browser, that serves as a stand in for electron.")
    (license bsd-2)
    (source
     (origin
       (method git-fetch)
	   (uri (git-reference
			 (url "https://github.com/LukasZumvorde/retumilo-mini")
			 (commit version)))
       (sha256
        (base32 "0hvjpkmihzp83pk3wqv528npha7q098k2cwawd8gahm5r83ld76b"))))
    (build-system asdf-build-system/sbcl)
	(inputs (list
			 sbcl-cl-cffi-gtk
			 sbcl-cl-webkit
			 sbcl-rove))))

retumilo-mini
