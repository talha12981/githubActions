#!/usr/bin/env bash
# bash boilerplate
readonly SCRIPT_NAME="$(basename "$0")"
readonly SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
function l { # Log a message to the terminal.
    echo
    echo -e "[$SCRIPT_NAME] ${1:-}"
}

# move to the root the notehub-js repo
cd "./testGithubActions"
echo "Open root of testGithubActions repo"

git add -A .
git config user.name "talha anjum"
git config user.email "chtalha.anjum@gmail.com"
git commit -am "feat: Update Model File"
git push --set-upstream origin $BRANCH

echo "Updated Model file successfully pushed to testGithubActions repo"