# fuzzy find a command in history and then run
hr () { eval $(history | sort -rn | sed 's/ *[0-9]* *//' | fzf --no-sort) }

# fuzzy find ls output
lsf () { command ls -A $1 | fzf }

# cross platform colored output for ls
__colored_ls () {
  if [[ "$OSTYPE" == "linux-gnu"* ]]; then command ls --color $@
  else command ls -G $@
  fi
}

# -- nicer git --
# git add commit
gac () {
  git add "$1"
  git commit -m "$2"
}

# git add commit push
gacp () {
  message=${@:$#}
  files=(${@:1:$# - 1})

  for file in $files; do
    git add "$file"
  done

  git commit -m "$message"
  git push
}

# git commit push
gcap () {
  git commit -m "$1"
  git push
}
