# I generally keep my bashrc pretty empty.  I don't like aliases in most cases.
alias gitk="gitk --all &"

# This sets the prompt to show the date and time, the host and the working directory.
# It's extremely useful to know what time a prompt was issued.
export PS1="${debian_chroot:+($debian_chroot)}\D{%m/%d %k:%M:%S} \h \w\$ "

# Make LaTeX not do their annoying 80 character stdout:
export max_print_line=100000
