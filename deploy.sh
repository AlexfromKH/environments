#!/bin/sh
git add  .
git commit -m "$1"
case "$2" in
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
if [ -n $3 ] && [ $3 -eq "-r" ]; then
  r10k deploy environment -p
  echo "*******************************"
  echo "files commited with $1 pushed to $branch and deployed with r10k to puppet environment"
  echo "*******************************"
elif [ $3 -ne "-r" ]; then
  echo "do deploy environment with r10k enter -r"
  exit 1
esle
  echo "*******************************"
  echo "files commited with $1 pushed to $branch"
  echo "*******************************"
fi
