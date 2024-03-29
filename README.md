# zinit-annex-default-ice

A [Zinit](https://github.com/zdharma-continuum/zinit) annex (i.e.: an extension module) that allows to set **default
ices** for the next `zinit` commands. It adds a new subcommand: **default-ice** which has the following synopsis:

```
—— default-ice --help/-h --clear/-c --show/-s --get/-g --quiet/-q --stats/-t 
—— default-ice ice1'value1' ice2'value2' ⋯ 

 Description:
 --help/-h	→      this message
 --show/-s	→      show the currently set default ices
 --clear/-c	→      reset the default ices
 --get/-g	→      return the current ices in Reply hash
 --quiet/-q	→      hide all messages
 --stats/-t	→      show some statistics
```

## Example Use

```zsh
zinit default-ice lucid from"gh-r"

# Will download from gh-r and also use the lucid ice by default.
zinit wait for 
    sbin        junegunn/fzf-bin \
    sbin"**/pk" peco/peco
```

Currently the `wait''` ice cannot be made default by using this new subcommand.

<!-- vim:set ft=markdown tw=79 autoindent fo+=a1n: -->
