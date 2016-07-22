from xonsh.tools import ON_WINDOWS as _ON_WINDOWS


_show_ret_code = True


def _ret_code_color():
    if __xonsh_history__.rtns:
        color = 'blue' if __xonsh_history__.rtns[-1] == 0 else 'red'
    else:
        color = 'blue'
    if _ON_WINDOWS:
        if color == 'blue':
            return '{BOLD_INTENSE_CYAN}'
        elif color == 'red':
            return '{BOLD_INTENSE_RED}'
    else:
        if color == 'blue':
            return '{BOLD_BLUE}'
        elif color == 'red':
            return '{BOLD_RED}'


def _ret_code():
    if _show_ret_code and __xonsh_history__.rtns:
        return_code = __xonsh_history__.rtns[-1]
        if return_code != 0:
            return '[{}]'.format(return_code)
    return ''


$PROMPT = $PROMPT.replace('{prompt_end}{NO_COLOR}',
                          '{ret_code_color}{ret_code}{prompt_end}{NO_COLOR}')


$FORMATTER_DICT['ret_code_color'] = _ret_code_color
$FORMATTER_DICT['ret_code'] = _ret_code
