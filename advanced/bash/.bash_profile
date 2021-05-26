# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

##
# Your previous /Users/thomasmortier/.bash_profile file was backed up as /Users/thomasmortier/.bash_profile.macports-saved_2019-03-02_at_14:47:34
##

# MacPorts Installer addition on 2019-03-02_at_14:47:34: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# Set LS color profile
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Set username and command line prompt colors
export TERM=xterm-256color
PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '


