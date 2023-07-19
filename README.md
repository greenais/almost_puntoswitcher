# almost_puntoswitcher
Linux shell script which covers 80% of really used PuntoSwitcher or XNeur functionality. Contains inside Eng-Rus conversion, but is easily adaptable for any layouts pair.

.

**1) Why**

1. I hate to delete and re-type even couple of words (not to mention couple of paragraphs) which I did blindly in wrong keyboard layout

    _(as probably you do, that's why you are here)_

2. Linux space, unfortunately, has nothing to offer here but abandoned projects whcih, anyway, aren't suitable because...

3. I hate to install perfect keyloggers I have to trust
  
     _(like Punto Switcher itself)_

.


**2) What is it**

Just two small scripts in plain bash which do 80% of really needed in daily routine job in terms of dealing with wrong layout:

1. one (previous_convert.sh) converts wrongly typed garbage from cursor to beginning of the current text string - as if you quickly noticed wrong layout just started typing

    _(in fact - 90+% cases)_

2. another one (selected_convert.sh) expects you to mouse-select first what to convert

     _(useful for paragraphs or multi-layout strings)_

3. Both conveniently switch current keyboard layout to desired one.

.

**3) Installation**

1. install two small tools used in scripts from official Debian repository:

  `sudo apt install xdotool xsel`

    (for oher distros correct command accordingly)

2. copy both scripts to any location in your home directory

    _(`~/.local/bin` could be good enough choice)_

3. make scripts executable

  `chmod +x previous_convert.sh`

  `chmod +x selected_convert.sh`

    (or use for that your distro File Manager in GUI-way) 

4. bind some hotkeys to these scripts to call them when needed

    (personnaly I bound ctrl-F12 to previous_, and ctrl-shift-F12 to selected_)

.

**4) Issues**

1. Should not be one, but feel free to ask for help in corresponding section above.

2. Please note that these scripts don't detect automatically wrong layout as you type (that's why they are not keyloggers), they just convert typed garbage into something meaningful when you decide to.

.

**5) Adoption**

To change default layouts pair (Eng-Rus) to anotther one look inside scripts for sed command - you'll find out letters you should replace for new pair, quite straightforward. Pull requests with new pairs are welcomed.
