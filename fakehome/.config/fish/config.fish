# colors
set -g fish_color_autosuggestion 555 brblack
set -g fish_color_cancel -r
set -g fish_color_command 005fd7
set -g fish_color_comment 990000
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end 009900
set -g fish_color_error ff0000
set -g fish_color_escape 00a6b2
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_host_remote yellow
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator 00a6b2
set -g fish_color_param 00afff
set -g fish_color_quote 999900
set -g fish_color_redirection 00afff
set -g fish_color_search_match white --background=brblack
set -g fish_color_selection white --bold --background=brblack
set -g fish_color_status red
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline
set -g fish_pager_color_completion
set -g fish_pager_color_description B3A06D yellow
set -g fish_pager_color_prefix white --bold --underline
set -g fish_pager_color_progress brwhite --background=cyan
set -g fish_pager_color_selected_background -r

# key bindings
set -g fish_key_bindings fish_vi_key_bindings
fzf --fish | source

# abbreviations
abbr -a -- q exit
abbr -a -- v nvim
abbr -a -- pin 'sudo pacman -S'
abbr -a -- pun 'sudo pacman -Rns'
abbr -a -- pup 'sudo pacman -Syu'
abbr -a -- pqi "pacman -Qq | fzf --multi --preview='pacman -Qil {}'"
abbr -a -- psr "pacman -Slq | fzf --multi --preview='pacman -Si {}; pacman -Fl {}'"
