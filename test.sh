#!/bin/sh

echo "パーソナルアクセストークンを入力してください"
read PERSONAL_ACCESS_TOKEN

echo "マージするプルリクエストのナンバーを入力してください"
read PULL_NUMBER

echo "予約する日時を入力してください。例:202205241900 -> 2022年5月24日19時00分"
read RELESE_DATETIME

command= echo "curl -X PUT \
-H "Accept: application/vnd.github.v3+json" \
-H "Authorization: token $PERSONAL_ACCESS_TOKEN" \
https://api.github.com/repos/AGO523/merge_sample/pulls/$PULL_NUMBER/merge" | at -t "$RELESE_DATETIME"
eval $command
