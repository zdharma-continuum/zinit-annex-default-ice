# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-

# Copyright (c) 2020 Sebastian Gniazdowski

# According to the Zsh Plugin Standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html#zero-handling

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# Standard hash for plugins:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html#std-hash
typeset -gA Plugins
Plugins[DEFAULT_ICE_DIR]="${0:h}"

autoload -Uz ∧za-default-ice-preinit-handler \
    ∧za-default-ice-main-cmd-help-handler \
    ∧za-default-ice-main-cmd

# An empty stub to fill the help handler fields
∧za-default-ice-help-null-handler() { :; }

# The unscoping-support hook.
@zinit-register-annex "z-a-default-ice" \
    hook:preinit-3 \
    ∧za-default-ice-preinit-handler \
    ∧za-default-ice-help-null-handler

# The subcommand `meta'.
@zinit-register-annex "z-a-default-ice" \
    subcommand:default-ice \
    ∧za-default-ice-main-cmd \
    ∧za-default-ice-main-cmd-help-handler

# vim:ft=zsh:tw=80:sw=4:sts=4:et:foldmarker=[[[,]]]
