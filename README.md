# afrodots
Atomsky's dotfiles

## Installation
**afrodots** uses [Git](https://git-scm.com) along with [Stow](https://www.gnu.org/software/stow)
to manage configuration files. After cloning this repository, issuing the following commands will
populate the `$HOME` directory with symbolic links to the files stored in `afrodots/fakehome`.

	cd /path/to/afrodots
	stow -v --target=$HOME fakehome

## Packages
`pkglist.txt` lists the packages to be installed from [Arch](https://archlinux.org) repositories.
A short list of daily used programs follows.

- Shells: [fish](https://fishshell.com), [xonsh](https://xon.sh)
- Emulators: [st](https://st.suckless.org), [alacritty](https://github.com/alacritty/alacritty)
- Editor: [neovim](https://neovim.io)
- Window Manager: [bspwm](https://github.com/baskerville/bspwm)
- Keyhandler: [sxhkd](https://github.com/baskerville/sxhkd)
- Wallsetter: [nitrogen](https://github.com/l3ib/nitrogen)
- Screenlocker: [xlockmore](http://sillycycle.com/xlockmore.html)
- Compositor: [picom](https://github.com/yshui/picom)
- Launchers: [dmenu](https://tools.suckless.org/dmenu), [rofi](https://github.com/davatorium/rofi)
- Status Bar: [polybar](https://github.com/polybar/polybar)
- Notification-daemon: [dunst](https://github.com/dunst-project/dunst)
- File Managers: [nnn](https://github.com/jarun/nnn), [broot](https://dystroy.org/broot)
- Media Openers: [sxiv](https://github.com/muennich/sxiv), [mpv](https://mpv.io)
- Document Viewer: [zathura](https://pwmt.org/projects/zathura)
- Fonts: [Fira Code](https://github.com/tonsky/FiraCode), [DejaVu](https://dejavu-fonts.github.io)
- Theme: [Materia](https://github.com/nana-4/materia-theme)

## License
Copyright (C) 2020-2021 ATM Jahid Hasan<br>
**afrodots** is released under the [GNU AGPL](https://www.gnu.org/licenses/agpl-3.0.en.html).
