(simple-service 'substitutes guix-service-type
  (guix-extension
    (authorized-keys
     (list (plain-file "guix-moe-old.pub"
             "(public-key (ecc (curve Ed25519) (q #374EC58F5F2EC0412431723AF2D527AD626B049D657B5633AAAEBC694F3E33F9#)))")
           (plain-file "guix-moe.pub"
             "(public-key (ecc (curve Ed25519) (q #552F670D5005D7EB6ACF05284A1066E52156B51D75DE3EBD3030CD046675D543#)))")
           (plain-file "nonguix.pub"
             "(public-key (ecc (curve Ed25519) (q #PASTE-Q-VALUE-HERE#)))")))
    (substitute-urls
     '("https://substitutes.nonguix.org"
       "https://cache-sg.guix.moe"
       "https://cache-cdn.guix.moe"
       "https://ci.guix.gnu.org"))))
