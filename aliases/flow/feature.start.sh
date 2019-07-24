#!/bin/bash

# Parameters 
BRANCH=$1;

# Imports
. $HOME/gitflow/modules/flow.sh;

# Validations
verifyBranchNameProvided $BRANCH;

# Process
forceBranchUpdateFromOrigin "develop";
git branch feature/$BRANCH develop;
git checkout feature/$BRANCH;
git push --set-upstream origin feature/$BRANCH;