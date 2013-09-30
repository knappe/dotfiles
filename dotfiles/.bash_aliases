alias mvim="gvim"
alias 'sc'='ruby -rthread script/console'
alias 'ss'='ruby -rthread script/server'
alias 'cb'='git branch 2> /dev/null | grep "*" | awk "{print \$2}"'
alias 'gs'='git status --porcelain 2> /dev/null | sort | awk "{print \$1}" | uniq -c | tr "\\n", "," | tr -d "[:space:]" | sed -e "s/,$//"'
alias 'gss'='git status'
alias 'gac'='git add . ; git commit -m '
alias 'gc'='git checkout'
alias 'bi'='bundle install'
alias 'bex'='bundle exec'

alias 'pull'='git pull origin HEAD'
alias 'push'='git push origin HEAD'
alias 'fucking_stage'='git push origin HEAD && git push cl_staging HEAD:master'
