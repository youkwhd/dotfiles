## starts the prime-offload which will configure GPU switches # you have to manually run `sudo prime-switch`
## after quitting dwm respectively.
prime-offload

## TODO: make a script for automating wallpaper changes
xwallpaper --zoom $HOME/Downloads/_wallpapers/7.jpg
# xwinwrap -ov -ni -g 1366x768 -- mpv --fullscreen --vo=vaapi --hwdec=vaapi --no-stop-screensaver --loop-file --no-audio --no-osc --no-osd-bar -wid WID --no-input-default-bindings $HOME/Downloads/live_wal/M4-SOPMOD-II.mp4 &

# wal -i $HOME/pictures/wallpaper_canyon.jpg --saturate 0.4 -tn
# wal -i $HOME/pictures/wallpaper_canyon.jpg --saturate 0.2 -tn

## special requirement for wal color config
sed -i 'N;$!P;D' $HOME/.cache/wal/colors-wal-dwm.h

## automatically mount usb
# udiskie &

xbindkeys &
picom --no-fading-openclose --experimental-backends --vsync &
dwmblocks &

exec dwm
