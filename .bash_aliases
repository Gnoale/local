alias gp="git pull"
alias gs="git status"
alias gl="git log"
alias gln="git log --name-only"
alias glo="git log --oneline"
alias gc="git commit -m"
alias gcs="git commit -S -m"
alias gcm="git checkout master && git pull"
alias grs="git rebase HEAD~1 --exec 'git commit --amend --no-edit -n -S'"

alias diff="colordiff"
alias cks="cd ~/git/kayrros/salt"
alias ckt="cd ~/git/kayrros/terraform"
alias ck="cd ~/git/kayrros"
alias gn="grep -nr"
alias gni="grep -nri"

alias urldecode='python3 -c "import sys, urllib.parse as ul; \
    print(ul.unquote_plus(sys.argv[1]))"'
alias urlencode='python3 -c "import sys, urllib.parse as ul; \
    print (ul.quote_plus(sys.argv[1]))"'

alias topmem='ps -eo pmem,vsz,rss,pid,args | tail -n +2 | sort -rnk 1 | head'
alias topcpu='ps -eo time,pcpu,pmem,pid,args | tail -n +2 | sort -rnk 2 | head'

alias ssalt="ssh 10.100.6.4"

alias xc="xclip -selection clipboard"

alias bc="batcat"

alias tf="terraform"
