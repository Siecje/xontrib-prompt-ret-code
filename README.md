# Xontrib Prompt Ret Code

Modify the (xonsh)[https://xon.sh] prompt to include the return code of the last failed command.

```shell
cody@cody-ubuntu16 ~ $ git status
fatal: Not a git repository (or any of the parent directories): .git
cody@cody-ubuntu16 ~ [128]$ 
```

(demo.png)


## Install

```shell
pip install xontrib-prompt-ret-code
xontrib load prompt_ret_code
```

Add this line to your ```~/.xonshrc``` so it will automatically be loaded.

```shell
xontrib load prompt_ret_code
```

## License

MIT

