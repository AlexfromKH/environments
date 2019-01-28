#!/bin/sh
message=$1
branches=$2
deploy=$3
git add  .
git commit -m "$message"
case "$branches" in
  -p)
    branch="production"
    ;;
  -m)
    branch="master"
    ;;
  -t)
    branch="test"
    ;;
  -s)
    branch="staging"
    ;;
  *)
    echo "Usage: deploy {comment} {-p (production) | -t (test) | -s (staging | -m (master)}"
    exit 1
esac  
git push origin "$branch"
# deploy environment with r10k
if [ -n $deploy ] && [ $deploy == "-r" ]; then
  r10k deploy environment -p
  echo "*******************************"
  echo "files commited with $1 pushed to $branch and deployed with r10k to puppet environment"
  echo "*******************************"
elif [ $deploy !== "-r" ]; then
  echo "do deploy environment with r10k enter -r"
  exit 1
elif [ -z $deploy ]; then
  echo "*******************************"
  echo "files commited with $1 pushed to $branch"
  echo "*******************************"
fi
