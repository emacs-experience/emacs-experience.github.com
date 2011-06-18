;; emacs-experience.github.com
;; org-publish-project-alist

(require 'org-publish)
(setq org-publish-project-alist
      '(

        ("emacs-experience.github.com-inherit"
         :base-directory "~/projects/static-files/"
         :recursive t
         :base-extension "css\\|js"
         :publishing-directory "~/projects/emacs-experience.github.com/public_html/"
         :publishing-function org-publish-attachment
         )

        ("emacs-experience.github.com-notes"
         :base-directory "~/projects/emacs-experience.github.com/org-files/"
         :auto-index t
         :index-filename "sitemap.org"
         :index-title "Sitemap"
         :recursive t
         :base-extension "org"
         :publishing-directory "~/projects/emacs-experience.github.com/public_html/"
         :publishing-function org-publish-org-to-html
         :headline-levels 3
         :auto-preamble t
         )
        ("emacs-experience.github.com-static"
         :base-directory "~/projects/static-files/"
         :recursive t
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/projects/emacs-experience.github.com/public_html/"
         :publishing-function org-publish-attachment)

        ("emacs-experience.github.com" :components ("emacs-experience.github.com-inherit" "emacs-experience.github.com-notes" "emacs-experience.github.com-static"))


        ))