#!/bin/bash

# スクリプトが受け取る引数の数をチェック
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <commit-message> "
  exit 1
fi

# 引数を変数に代入
COMMIT_MESSAGE="$1"
BRANCH_NAME="$2"

# Gitの操作を実行
echo "Staging all changes..."
git add *

echo "Committing with message: $COMMIT_MESSAGE"
git commit -m "$COMMIT_MESSAGE"

echo "Pushing to branch: $BRANCH_NAME"
git push origin slide

echo "Git operations completed."
