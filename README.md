# README

# アプリ名

　youtube動画表示(まだ考え中です)
 
# 概要

・ youtubeの動画のURLを入れることで動画を表示し保存する。
・保存した動画を表示する。
##これから実装する予定のこと
・保存した動画の編集(削除や追加など)
・検索できるようにする
・機能追加


# DB設計


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|password|string|null: false|
|email|string|null: false|
|name|string|null: false|
### Association
- has_many :videos

## videoテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|text|string|null: false|
|title|string|null: false|
### Association
- belongs_to :user


# 制作背景

　・Javascript勉強のため。
　・apiとはどんなものなのか、、、
　・非同期の勉強のため
ほとんど自分の勉強のために作っています。知識不足なところが多いのでしっかり学んでから機能追加を目指します！！！！



# 未完成
・非同期でjsonとjsが同時に行われてしまっているので2回ずつデータベースに保存されてしまう。
・マイページで動画の編集をできる様にする。
・検索で保存した動画を取り出せる様にする。
・アプリとして成り立つようにする。

