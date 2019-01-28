#!/bin/sh
git add  .
git commit -m "$1"
echo "files added to staging and commited with $1"
case $2 in
  "-p")
    $branch="production"
    ;;
  "-m")
    $branch="master"
    ;;
  "-t")
    $branch="test"
    ;;
  "-s")
    $branch="staging"
    ;;
  *)
     echo "Usage: deploy {comment} {-p (production) | -t (test) | -s (staging | -m (master)}"
     exit 1
esac  
git push origin "$2"
echo
echo "pushed to $1"
echo *******************************
