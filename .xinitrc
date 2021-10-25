#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

setxkbmap -model pc105 -layout us,ru -option grp:alt_shift_toggle
setxkbmap -option caps:none
xset r rate 210 30
xinput set-prop 12 "Device Accel Constant Deceleration" 1.9
#xset -dpms
#xset s off
xset +dpms
xset s 600

export XDG_RUNTIME_DIR=/run/user/$UID
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export QT_QPA_PLATFORMTHEME="qt5ct"
export MOZ_USE_OMTC=1
#QT_QPA_PLATFORMTHEME=gtk2 # To make Qt5 applications use the gtk2 style.

exec dbus-launch i3

