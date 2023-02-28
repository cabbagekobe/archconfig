PARU_PACKAGE := terminator-git jumpapp postman-bin
PARU_PACKAGE += zoom slack-desktop
PARU_PACKAGE += php composer github-cli
PARU_PACKAGE += visual-studio-code-bin
PARU_PACKAGE += ngrok google-chrome
PARU_PACKAGE += siji-git ttf-cica

init: ## Initial deploy dotfiles
	rm -rf ${HOME}/.xinitrc
	rm -rf ${HOME}/.xprofile
	rm -rf ${HOME}/.Xmodmap
	rm -rf ${HOME}/.config/openbox/
	rm -rf ${HOME}/.config/polybar/
	rm -rf ${HOME}/.config/ranger/
	rm -rf ${HOME}/.config/terminator/
	cp -R ${HOME}/archconfig/.xinitrc ${HOME}/.xinitrc
	cp -R ${HOME}/archconfig/.xprofile ${HOME}/.xprofile
	cp -R ${HOME}/archconfig/.Xmodmap ${HOME}/.Xmodmap
	cp -R ${HOME}/archconfig/.config/openbox/ ${HOME}/.config/openbox/
	cp -R ${HOME}/archconfig/.config/polybar/ ${HOME}/.config/polybar/
	cp -R ${HOME}/archconfig/.config/ranger/ ${HOME}/.config/ranger/
	cp -R ${HOME}/archconfig/.config/terminator/ ${HOME}/.config/terminator/
 
paru:
	paru -Sy ${PARU_PACKAGE}
