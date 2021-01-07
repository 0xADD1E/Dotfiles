#!/bin/sh
set -e

brew update && brew upgrade && brew install git mercurial

cat $(dirname $0)/build-from-head.list | xargs brew install -s --HEAD
cat $(dirname $0)/build-from-src.list | xargs brew install -s
cat $(dirname $0)/formula.list | xargs brew install
cat $(dirname $0)/casks.list | xargs brew install --cask
