# almost_puntoswitcher
Linux shell script which covers 80% of really used PuntoSwitcher functionality



**1) Why**

- I hate to delete and re-type even couple of words (not to mention couple of paragraphs) which I did blindly in wrong keyboard layout (as probably you do, that's why you are here)
- Linux space, unfortunately, has nothing to offer here but abandoned projects whcih, anyway, aren't suitable because...
- I hate to install perfect keyloggers I have to trust (like Punto Switcher itself)



**2) What is it**

Just two small scripts in plain bash which do 80% of really needed in daily routine job in terms of dealing with wrong layout:
- one (previous_convert.sh) converts wrongly typed garbage from cursor to beginning of the current text string - as if you quickly noticed wrong layout just started typing (in fact - 90+% cases)
- another one (selected_convert.sh) expects you to mouse-select first what to convert (useful for paragraphs or multi-layout strings)
Both conveniently switch current keyboard layout to desired one.



**3) Installation**

- install two small tools used in scripts from official Debian repository:
_# sudo apt install xdotool xsel_
(for oher distros correct command accordingly)
- copy both scripts to any location in your home directory
(~/.local/bin could be good enough choice)
- make scripts executable
_chmod +x previous_convert.sh
chmod +x selected_convert.sh_
(or use for that your distro File Manager in GUI-way) 
- bind some hotkeys to these scripts to call them when needed
  (personnaly I bound ctrl-F12 to previous_, and ctrl-shift-F12 to selected_)



**4) Issues**

Should not be one, but feel free to ask for help in corresponding section above.
Please note that these scripts don't detect automatically wrong layout as you type (that's why they are not keyloggers), they just convert typed garbage into something meaningful when you decide to.
