# youkwhd's arch dotfiles

i am using some of [Luke Smith](https://github.com/lukesmithxyz)'s build, like Luke's [st terminal](https://github.com/lukesmithxyz/st) build.

![dwm gif](./videos/dwm.gif)
![dwm screenshot](./screenshots/wm__screenshot-04.png)

## st transparency
if your terminal's tranparency doesn't get affected, install a composite manager (e.g compton, xcompmgr) to enable the transparency.

## some config that you have to manually rewrite:
i use [python pywal](https://github.com/dylanaraps/pywal) for my color schemes, thus i have tweaked a little bit of dwm and dmenu configuration for it.

what you need to change is:

* [dwm config.h](https://github.com/youkwhd/dotfiles/blob/master/.config/suckless/dwm/config.h#L11)

* [dmenu config.h](https://github.com/youkwhd/dotfiles/blob/master/.config/suckless/dmenu/config.h#L11)

> make sure that you have [pywal](https://github.com/dylanaraps/pywal) or else you need to configure your own color scheme for dwm and dmenu.  

change the above code code to your own wal cache path.

`/home/<your username>/.cache/wal/colors-wal-<dwm or dmenu>.h`

## why is my build of dwm and st is here?
soon all of suckless builds will be moved from this repo.
