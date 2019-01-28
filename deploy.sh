#!/bin/sh
git add  .
git commit -m "$1"
case $2 in
  -p)
    $branch="production"
    ;;
  -m)
    $branch="master"
    ;;
  -t)
    $branch="test"
    ;;
  -s)
    $branch="staging"
    ;;
  *)
     echo "Usage: deploy {comment} {-p (production) | -t (test) | -s (staging | -m (master)}"
     exit 1
esac  
#git push origin "$branch"
echo *******************************
echo "files commited with $1 pushed to $branch"
echo *******************************
