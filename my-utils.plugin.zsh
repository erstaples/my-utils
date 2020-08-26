function errcho {
  >&2 echo $@
}

function copycho {
  echo $@ | pbcopy
}

function mktempx {
  TMPFILE=`mktemp`
  if [[ ! -z "$1" ]]
  then
    TMPFILE=$TMPFILE.$1
  fi
  copycho $TMPFILE
  errcho $TMPFILE
  echo $TMPFILE
}
