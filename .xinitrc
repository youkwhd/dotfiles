## starts the prime-offload which will configure GPU switches
## you have to manually run `sudo prime-switch` after quitting
## dwm respectively.

## NOTE: you have to break the dwm while loop and execute startx
prime-offload

xbindkeys &
xcompmgr &
dwmblocks &
#$HOME/.local/bin/setbg &


## TODO: make a script for automating wallpaper changes
xwallpaper --zoom $HOME/pictures/wallpaper_starwars2.jpg
#wal -i $HOME/pictures/wallpaper_starwars2.jpg -n
#sed -i 'N;$!P;D' $HOME/.cache/wal/colors-wal-dwm.h

## if you wanna switch GPUs, run this command manually before startx 
#sudo prime-switch

## this implementation is just straight bad, it consumes a lot of CPU.
#while type dwm >/dev/null ; do dwm & continue || break ; done 
exec dwm
