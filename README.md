# My Favorite YouTube

## URL
* https://ancient-anchorage-55032.herokuapp.com/

## コンセプト
* 私のお気に入りの動画・クリエイターをみんなに知ってもらうSNS型ウェブアプリ。

## 作成したきっかけ
* 私自信YouTubeが好きであること。そしておすすめのYouTube動画やクリエイターを多くの人に知ってもらえるプラットフォームがあればと思ったこと。また、他ユーザーのおすすめを知れることで、今まで知らなかった動画やクリエイターはもちろん、同じ嗜好を持ったユーザーを発見できると思い、YouTube動画に特化したSNS型ウェブアプリを作成しました。

## 機能一覧
### 認証機能
* サインイン、サインアップ機能(devise)
  * email、パスワード、ユーザー名、ユーザーID必須


### 投稿機能
* 投稿一覧ページ（ホーム画面）
  * フォローしているユーザーの投稿を新着順に表示

* 新規投稿ページ
  * 新規投稿機能
  * URLからの動画挿入機能
  * タグ付け機能（acts-as-taggable-on）
  * 公開非公開機能（enum）

* 投稿詳細ページ
  * 動画再生機能
  * いいね機能
  * 投稿者のコメント、タグの表示
  * 投稿者詳細ページへのリンク設置
  * 投稿編集リンクの設置（記事の投稿者の場合のみ表示）

* 投稿編集ページ
  * 投稿編集機能
  * 投稿削除機能


### ユーザー機能
* ユーザー一覧ページ
  * アプリを利用している全ユーザーを表示

* ユーザー詳細ページ
  * ユーザーのプロフィールと投稿一覧を表示
  * フォローボタンの設置（自身のページの場合は非表示）
  * フォロー、フォロワー一覧リンクの設置
  * プロフィール編集、いいね一覧、アカウント設定リンクの設置（自身のページのみ）

* プロフィール編集ページ
  * ユーザー名、ユーザーID、アイコン画像、自己紹介の変更

* いいね一覧ページ
  * 自身がいいねした記事の一覧を表示

* アカウント設定ページ
  * パスワードとメールアドレス変更機能
  * アカウント削除機能

### フォロー機能
* 各ユーザーにフォローボタンによるフォロー機能を実装
* 非同期処理にて即時反映（Ajax）

### いいね機能
* 各投稿にいいね機能を実装
* 非同期処理にて即時に反映（Ajax）
* いいねした記事はいいね一覧ページにて表示
 

## 取り入れた技術
### 環境、フレームワーク
* AWS
* Ruby 2.6.3
* Rails 5.2.4.4
* Bootstrap 4
* jQuery
* PostgreSQL
* heroku

### その他技術
* devise(ログイン機能)
* CarrierWave(画像アップロード機能)
* S3(クラウド上への画像管理)
* YouTube URLから動画の埋め込み表示
* Ajax(いいねボタンとフォローボタンの非同期処理)
* acts-as-taggable-on(タグ作成機能)
* enum(記事の公開非公開設定)


## 重視している点
* SNS型アプリとしてログイン機能を実装し、第三者によるアカウントの乗っ取りや、非公開の記事が閲覧されることがないよう、セキュリティ面を徹底しました。
* 動画の挿入はYouTubeの共有からリンクをコピーしてフォームに貼り付けることで、スムーズに投稿できる仕組みにしました。
* フォロー機能を実装し、ホーム画面でフォローしているユーザーの投稿の表示、フォローリストからユーザー詳細ページへのアクセスなど、ユーザーとの繋がりを持てるようにしました。
* 気に入った記事はいいねボタンで保存し、いいね一覧からスムーズにアクセスできるようにしました。
* herokuでは画像が一時的にしか保存されないため、S3を用いて格納させました。


## 今後の課題
* デザイン周りをさらに整える。
* 検索機能を取り入れ、タグ名、チャンネル名はもちろん、1つのワードから投稿をリサーチできるようにしていく。


