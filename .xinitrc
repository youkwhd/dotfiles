## starts the prime-offload which will configure GPU switches # you have to manually run `sudo prime-switch` after quitting
## dwm respectively.

## NOTE: you have to break the dwm while loop and execute startx
prime-offload

## TODO: make a script for automating wallpaper changes
xwallpaper --zoom $HOME/Downloads/_wallpapers/7.jpg
# xwinwrap -ov -ni -g 1366x768 -- mpv --fullscreen --vo=vaapi --hwdec=vaapi --no-stop-screensaver --loop-file --no-audio --no-osc --no-osd-bar -wid WID --no-input-default-bindings $HOME/Downloads/live_wal/M4-SOPMOD-II.mp4 &
# xwinwrap -ov -ni -g 1366x768 -- mpv --fullscreen --vo=vaapi --hwdec=vaapi --no-stop-screensaver --loop-file --no-audio --no-osc --no-osd-bar -wid WID --no-input-default-bindings $HOME/live_wallpapers/mylivewallpapers.com-Demon-Slayer-Kokushibou.mp4 &
# xwinwrap -ov -ni -g 1366x768 -- mpv --fullscreen --vo=vaapi --hwdec=vaapi --no-stop-screensaver --loop-file --no-audio --no-osc --no-osd-bar -wid WID --no-input-default-bindings $HOME/Downloads/__live_wal/Kimetsu-no-Yaiba-Cybust-Shinobu-Kocho-PC-1080.mp4 &
# wal -i $HOME/pictures/wallpaper_canyon.jpg --saturate 0.4 -tn
wal -i $HOME/pictures/wallpaper_canyon.jpg --saturate 0.2 -tn
sed -i 'N;$!P;D' $HOME/.cache/wal/colors-wal-dwm.h

## automatically mount usb
# udiskie &

xbindkeys &
# picom --no-fading-openclose --backend glx --vsync &
picom --no-fading-openclose --experimental-backends --vsync &
dwmblocks &
# buckle &

## if you wanna switch GPUs, run this command manually before startx 
#sudo prime-switch

## this implementation is just straight bad, it consumes a lot of CPU.
## if you really want a reload on dwm, consider patches.
#while type dwm >/dev/null ; do dwm & continue || break ; done 

# exec awesome
# exec i3
exec dwm
# exec startxfce4
