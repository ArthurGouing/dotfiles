;; This "home-environment" file can be passed to 'guix home reconfigure'
;; to reproduce the content of your profile.  This is "symbolic": it only
;; specifies package names.  To reproduce the exact same profile, you also
;; need to capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

(use-modules (gnu home)
             (gnu packages)
             (gnu services)
             (guix gexp)
             (gnu home services shells))
             (gnu home services dotfiles))

(home-environment
  ;; Below is the list of packages that will show up in your
  ;; Home profile, under ~/.guix-home/profile.
  (packages (specifications->packages (list "emacs"
                                            "git"
                                            "kitty"
                                            "neovim"
                                            ))) ;; TODO: zen

  ;; Below is the list of Home services.  To search for available
  ;; services, run 'guix home search KEYWORD' in a terminal.
  ;; (services
  ;;  (append (list (service home-bash-service-type
  ;;                         (home-bash-configuration
  ;;                          (aliases '(("-- -" . "cd -") (".." . "cd ..")
  ;;                                     ("..." . "cd ../..")
  ;;                                     ("...." . "cd ../../..")
  ;;                                     ("_" . "sudo")
  ;;                                     ("babsh" . "bash-it")
  ;;                                     ("bash_it" . "bash-it")
  ;;                                     ("bash_ti" . "bash-it")
  ;;                                     ("bashit" . "bash-it")
  ;;                                     ("batbsh" . "bash-it")
  ;;                                     ("batshit" . "bash-it")
  ;;                                     ("bshena" . "bash-it enable alias")
  ;;                                     ("bshenc" . "bash-it enable completion")
  ;;                                     ("bshenp" . "bash-it enable plugin")
  ;;                                     ("bshha" . "bash-it help aliases")
  ;;                                     ("bshhc" . "bash-it help completions")
  ;;                                     ("bshhp" . "bash-it help plugins")
  ;;                                     ("bshsa" . "bash-it show aliases")
  ;;                                     ("bshsc" . "bash-it show completions")
  ;;                                     ("bshsch" . "bash-it search")
  ;;                                     ("bshsp" . "bash-it show plugins")
  ;;                                     ("c" . "clear")
  ;;                                     ("cat" . "mcat --img-height 95% --ls-height 4c --kitty")
  ;;                                     ("cd.." . "cd ..")
  ;;                                     ("cls" . "clear")
  ;;                                     ("dow" . "cd $HOME/Downloads")
  ;;                                     ("e" . "edit")
  ;;                                     ("edit" . "${EDITOR:-${ALTERNATE_EDITOR:-nano}}")
  ;;                                     ("egrep" . "egrep --color=auto")
  ;;                                     ("fgrep" . "fgrep --color=auto")
  ;;                                     ("grep" . "grep --color=auto")
  ;;                                     ("h" . "history")
  ;;                                     ("ipy" . "ipython")
  ;;                                     ("irc" . "${IRC_CLIENT:-irc}")
  ;;                                     ("l" . "ls -A")
  ;;                                     ("l1" . "ls -1")
  ;;                                     ("la" . "ls -AF")
  ;;                                     ("lf" . "ls -F")
  ;;                                     ("ll" . "ls -Al")
  ;;                                     ("ls" . "ls --color=auto")
  ;;                                     ("lsi" . "mcat --img-height 95% --ls-height 4c --kitty ls")
  ;;                                     ("md" . "mkdir -p")
  ;;                                     ("mycat" . "mcat --img-height 95% --ls-height 4c --kitty")
  ;;                                     ("pager" . "${PAGER:=less}")
  ;;                                     ("pass" . "passgen")
  ;;                                     ("py" . "python")
  ;;                                     ("q" . "exit")
  ;;                                     ("rb" . "ruby")
  ;;                                     ("rd" . "rmdir")
  ;;                                     ("reload_aliases" . "source '\\''Applications/bash_it/scripts/reloader.bash'\\'' '\\''alias'\\'' '\\''aliases'\\''")
  ;;                                     ("reload_completion" . "source '\\''Applications/bash_it/scripts/reloader.bash'\\'' '\\''completion'\\'' '\\''completion'\\''")
  ;;                                     ("reload_plugins" . "source '\\''Applications/bash_it/scripts/reloader.bash'\\'' '\\''plugin'\\'' '\\''plugins'\\''")
  ;;                                     ("rmrf" . "rm -rf")
  ;;                                     ("sedit" . "sudo ${EDITOR:-${ALTERNATE_EDITOR:-nano}}")
  ;;                                     ("shit" . "bash-it")
  ;;                                     ("sl" . "ls")
  ;;                                     ("snano" . "sudo ${ALTERNATE_EDITOR:-nano}")
  ;;                                     ("svim" . "sudo ${VISUAL:-vim}")
  ;;                                     ("vbpf" . "${VISUAL:-vim} ~/.bash_profile")
  ;;                                     ("vbrc" . "${VISUAL:-vim} ~/.bashrc")))
  ;;                          (bashrc (list (local-file "guix-config/.bashrc"
  ;;                                                    "bashrc")))
  ;;                          (bash-profile (list (local-file
  ;;                                               "guix-config/.bash_profile"
  ;;                                               "bash_profile")))
  ;;                          (bash-logout (list (local-file
  ;;                                              "guix-config/.bash_logout"
  ;;                                              "bash_logout"))))))
  ;;          %base-home-services)



  ;;  service home-dotfiles-service-type
  ;;        (home-dotfiles-configuration
  ;;          (directories `("./dotfiles")))))


