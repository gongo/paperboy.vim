#!/bin/sh

## Target resource configuration files.

    readonly RCFILES=".bashrc .zshrc"

## Set powerfull vim resource configuration

    readonly POWERUPVIM="$HOME/.paperboy.vim.el"

    cat <<EOF > $POWERUPVIM
(setq initial-scratch-message "\
;;
;;                                        VIM - Vi IMproved
;;
;;                                         version powerful !
;;                                      by Bram Moolenaar 他.
;;                     Modified by pkg-vim-maintainers@lists.alioth.debian.org
;;                          Vim はオープンソースであり自由に配布可能です
;;
;;                              ウガンダの恵まれない子供たちに援助を!
;;
;;                         終了するには           C-x C-c
;;                         ヘルプは               M-x help-for-help
;;                         バージョン情報は       M-x emacs-version
")
(setq inhibit-startup-message t)
(setq eshell-banner-message "

可愛い vimshell だと思った？
残念！Eshell ちゃんでした！

")

(defun vimshell ()
  (interactive)
  (eshell))

EOF

## Exectuion Powerup

    echo "Start hyper powerup your vim."

    for f in ${RCFILES}
    do
        if [ -w $HOME/${f} ] ; then
            echo ""                      >> $HOME/${f}
            echo "#====================" >> $HOME/${f}
            echo "# hyper powerup vim =" >> $HOME/${f}
            echo "#====================" >> $HOME/${f}
            echo "alias vim='\emacs -nw -q -l ${POWERUPVIM}'" >> $HOME/${f}
            echo ""                      >> $HOME/${f}
        fi
    done

    echo "Finish ... your vim now became powerful!!!"
