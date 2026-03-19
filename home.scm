(use-modules (gnu home)
             (gnu home services)
             (gnu home services dotfiles)
             (gnu packages shells)
             (gnu packages version-control)
             (gnu packages pdf)
             (gnu packages lxqt)
             (gnu packages vim)
             (gnu packages emacs)
             (nongnu packages chrome))

(home-environment
 (packages
  (list zsh
        git
        vim
        emacs
        brave
        rofi
        foot
        zathura
        zathura-pdf-poppler
        pcmanfm-qt))

 (services
  (list (service home-dotfiles-service-type
          (home-dotfiles-configuration
           (directories
            (list (local-file "dotfiles" #:recursive? #t))))))))
