# My Favorite YouTube
![My Favorite YouTube](/assets/images/favoyoutube.png "favoyoutube")


# コンセプト
* 私のお気に入りの動画・クリエイターをみんなに知ってもらうSNS型ウェブアプリ。

# URL
* https://ancient-anchorage-55032.herokuapp.com/

# 作成したきっかけ
* 私自信YouTubeが好きであること。そしておすすめのYouTube動画やクリエイターを多くの人に知ってもらえるプラットフォームがあればと思ったこと。また、他ユーザーのおすすめを知れることで、今まで知らなかった動画やクリエイターはもちろん、同じ嗜好を持ったユーザーを発見できると思い、YouTube動画に特化したSNS型ウェブアプリを作成しました。

# 機能一覧
## 認証機能
* サインイン、サインアップ機能(devise)
  * email、パスワード、ユーザー名、ユーザーID必須


## 投稿機能
* 投稿一覧ページ（ホーム画面）
  * 新着順に投稿を表示

* 新規投稿ページ
  * 新規投稿機能
  * URlからの動画挿入機能
  * タグ付け機能（acts-as-taggable-on）
  * 公開非公開機能（enum）

* 投稿詳細ページ
  * 動画再生機能
  * いいね機能
  * 投稿者のコメント、タグの表示
  * 投稿者詳細ページのリンク設置
  * 投稿編集リンクの設置（記事の投稿者の場合のみ表示）

* 投稿編集ページ
  * 投稿編集機能
  * 投稿削除機能


## ユーザー機能
* ユーザー一覧ページ
  * アプリを利用している全ユーザーを表示

* ユーザー詳細ページ
  * ユーザープロフィール、自身の投稿一覧を表示
  * フォローボタンの設置（自身のページの場合は非表示）
  * フォロー、フォロワー一覧リンクの設置
  * プロフィール編集、いいね一覧、アカウント設定リンクの設置（自身のページのみ）

* プロフィール編集ページ
  * ユーザー名、ユーザーID、アイコン画像（CarrierWave）、自己紹介の変更

* いいね一覧ページ
  * 自身がいいねした記事の一覧表示

* アカウント設定ページ
  * パスワード編集(devise)、メールアドレス変更機能
  * アカウント削除機能

## フォロー機能
* 各ユーザーにフォローボタンによるフォロー機能を実装
* 非同期処理にて即時反映（Ajax）

## いいね機能
* 各投稿にいいね機能を実装
* 非同期処理にて即時に反映（Ajax）
* いいねした記事はいいね一覧ページにて表示
 


# 使い方


* お気に入りの動画を見つけたら「新規投稿」から記事を作成。

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
