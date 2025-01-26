# afrodots
Atomsky's dotfiles

## Installation
**afrodots** uses [Git](https://git-scm.com) along with
[Stow](https://www.gnu.org/software/stow) to manage configuration files.
After cloning this repository, issuing the following commands will populate
the `$HOME` directory with symbolic links to the files stored in
`afrodots/fakehome`.

	cd /path/to/afrodots
	stow -v --target=$HOME fakehome

## Packages
`pkglist.txt` lists the packages to be installed from
[Arch](https://archlinux.org) repositories.
A short list of daily used programs follows.

- Shells: [fish](https://fishshell.com), [xonsh](https://xon.sh)
- Emulators: [afro-st](https://github.com/ATM-Jahid/afro-st),
  [foot](https://codeberg.org/dnkl/foot)
- Editor: [neovim](https://neovim.io)
- WM/Compositor: [bspwm](https://github.com/baskerville/bspwm),
  [hyprland](https://github.com/hyprwm/Hyprland)
- Wallsetter: [nitrogen](https://github.com/l3ib/nitrogen),
  [swaybg](https://github.com/swaywm/swaybg)
- Screenlocker: [physlock](https://github.com/muennich/physlock)
- Launchers: [rofi](https://github.com/davatorium/rofi),
  [fuzzel](https://codeberg.org/dnkl/fuzzel)
- Status Bar: [tint2](https://gitlab.com/o9000/tint2),
  [waybar](https://github.com/Alexays/Waybar)
- Task Manager: [btop](https://github.com/aristocratos/btop)
- Notification-daemon: [dunst](https://github.com/dunst-project/dunst)
- File Managers: [nnn](https://github.com/jarun/nnn),
  [broot](https://dystroy.org/broot)
- Media Openers: [sxiv](https://github.com/muennich/sxiv),
  [mpv](https://mpv.io)
- Document Viewer: [zathura](https://pwmt.org/projects/zathura)
- Fonts: [Fira Code](https://github.com/tonsky/FiraCode),
  [JetBrains Mono](https://github.com/JetBrains/JetBrainsMono)
- Theme: [Materia](https://github.com/nana-4/materia-theme)

## License
Copyright (C) 2020-2025 ATM Jahid Hasan<br>
**afrodots** is released under the
[GNU AGPL](https://www.gnu.org/licenses/agpl-3.0.en.html).
