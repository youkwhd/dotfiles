## starts the prime-offload which will configure GPU switches
## you have to manually run `sudo prime-switch` after quitting
## dwm respectively.

## NOTE: you have to break the dwm while loop and execute startx
prime-offload

xbindkeys &
xcompmgr &
dwmblocks &

## automatically mount usb
udiskie &

## TODO: make a script for automating wallpaper changes
xwallpaper --zoom $HOME/pictures/wallpaper_leaf.jpg
wal -i $HOME/pictures/wallpaper_leaf.jpg -tn
sed -i 'N;$!P;D' $HOME/.cache/wal/colors-wal-dwm.h

## a script to randomize wallpaper and colors 
#setbg

## if you wanna switch GPUs, run this command manually before startx 
#sudo prime-switch

## this implementation is just straight bad, it consumes a lot of CPU.
#while type dwm >/dev/null ; do dwm & continue || break ; done 

#exec i3
exec dwm
