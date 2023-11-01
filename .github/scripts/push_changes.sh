#!/usr/bin/env bash
# bash boilerplate
readonly SCRIPT_NAME="$(basename "$0")"
readonly SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
function l { # Log a message to the terminal.
    echo
    echo -e "[$SCRIPT_NAME] ${1:-}"
}

# Specify the Git repository and branch
REPO_URL="https://github.com/talha12981/testGithubActions.git"
BRANCH="main"

# Change to the directory of your Git repository

cd "./testGithubActions"
# move to the root the testGithubActons repo
echo "Open root of testGithubActions repo"

# Add, commit, and push your code to the specified branch
git add -A .
git config user.name "talha anjum"
git config user.email "chtalha.anjum@gmail.com"
git commit -am "feat: Update Model File"
git push "$REPO_URL" "$BRANCH"

echo "Updated Model file successfully pushed to testGithubActions repo"