#!/bin/bash

cd $HOME/git/(your backend project)
BEBRANCH=$(git rev-parse --abbrev-ref HEAD)
BECOMMIT=$(git rev-parse --short=8 HEAD)

cd $HOME/git/(your frontend project)
FEBRANCH=$(git rev-parse --abbrev-ref HEAD)
FECOMMIT=$(git rev-parse --short=8 HEAD)

echo "Backend:  [$BEBRANCH - $BECOMMIT]"
echo "Frontend: [$FEBRANCH - $FECOMMIT]"
