init: ## Initial deploy dotfiles
	rm -rf ${HOME}/.config/openbox/
	rm -rf ${HOME}/.config/polybar/
	rm -rf ${HOME}/.config/ranger/
	rm -rf ${HOME}/.config/terminator/
	cp -R ${HOME}/archconfig/openbox/ ${HOME}/.config/openbox/
	cp -R ${HOME}/archconfig/polybar/ ${HOME}/.config/polybar/
	cp -R ${HOME}/archconfig/ranger/ ${HOME}/.config/ranger/
	cp -R ${HOME}/archconfig/terminator/ ${HOME}/.config/terminator/
 
