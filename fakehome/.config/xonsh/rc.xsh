$VI_MODE = True
$XONSH_AUTOPAIR = True
$XONSH_COLOR_STYLE = "paraiso-dark"

$PROMPT = '{INTENSE_GREEN}┬─ {YELLOW}{env_name}{RESET}{user}\
@{hostname}:{UNDERLINE_ITALIC_GREEN}{cwd}{RESET}{gitstatus: [{}]}\n\
{INTENSE_GREEN}╰─>{RED}>{CYAN}>{RED}{last_return_code_if_nonzero:\
[{BOLD_INTENSE_RED}{}{RED}]}{RESET} '

$VIRTUALENV_HOME = '.vox'
xontrib load vox

$IPYTHONDIR = '~/.config/ipython'
$JUPYTER_CONFIG_DIR = '.jupyter'
