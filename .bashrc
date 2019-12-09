# showing git branch on prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# Customizing PS1
PS1="\e[91m\u\e[0m" # user in red \u
PS1+=" \e[92mat\e[0m " # word 'at' in green (replace with whatever character/text you want)
PS1+="\e[94m\h\e[0m" # host in light blue \h
PS1+=" \e[92min\e[0m " # word 'in' in green (replace with whatever character/text you want)
PS1+="\e[95m\e[1m\W\e[0m" # short working directory in light megento \W
PS1+="\e[93m\$(parse_git_branch)\e[0m" # optional: git branch in yello
PS1+="\n" # new line \n, all nice and clean
PS1+="$ " # start command line