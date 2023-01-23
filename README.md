<!-- # README
## usersテーブル

| Column             | Type   | Options    |
| ------------------ | ------ | ---------- |
| nickname           | string | null: false|
| email              | string | null: false|
| encrypted_password | string | null: false|
### Association
- has_many :task_lists

## task_listsテーブル

| Column     | Type         | Options                       |
| ---------- | ------------ | ----------------------------- |
| title      | string       | null: false                   |
| user       | references   | null: false,foreign_key: true |

### Association
-belongs_to :user
-has_many :cards

## cardsテーブル

| Column    | Type       | Options                       |
| --------- | ---------- | ----------------------------- |
| content   | string     | null: false                   |
| memo      | text       |                               |
| task_list | references | null: false,foreign_key: true |

### Association
- belongs_to :task_list -->

# アプリケーション名
SACHI!!Plan。
  
# アプリケーション概要
人生が終わるまでのカウントダウンや人生のタスクをゆるく管理することで、少し幸せに近づくことができる。
  
# URL
[https://sachi-plan.onrender.com](https://sachi-plan.onrender.com)
  
# テスト用アカウント
- Basic認証ID：admin 
- Basic認証パスワード：aaa111
- メールアドレス：taro@exmple.com
- パスワード：aaa111
  
# 利用方法

## カウントダウン機能
1.トップページからユーザー新規登録を行う  
2.一覧ページのカウントダウン設定ボタンから生年月日を入力
  
## タスク管理機能
1.一覧ページの新規投稿ボタンをクリックする。  
2.タスクリストのタイトルを入力し投稿ボタンを押す。  
3.1で作成したタスクリスト内にあるcard追加ボタンをクリックする。  
4.コンテンツメ名と任意でメモを入力、画像を設定し投稿ボタンを押す
  
# アプリケーションを作成した背景
コロナ禍の影響で自宅で過ごす時間が増え、その流れでインドアな傾向になり「休日を有効に使えていない」という課題を抱えていた。  
課題について分析をしたところ、週末を有効に使えない原因は「休日の予定を立てていないこと」、「残りの人生の自由時間を意識していないこと」だと仮説を立てた。  
真因を解決するためにカウントダウンタイマー付きのタスク管理アプリケーションを開発することにした。
  
# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1jJwdiKjbiA8lDfuf4WgLfFH82MoEYy_0r2OSVrFprAM/edit#gid=982722306)
  
# 実装した機能についての画像やGIFおよびその説明
準備中
  
# 実装予定の機能
現在はタスク管理機能を実装中。
今後はカウントダウン機能やTwitter認証ログインを実装予定。
  
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/7bcd11740af008d7b21365512b0f9d21.png)](https://gyazo.com/7bcd11740af008d7b21365512b0f9d21)
  

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/658d4b045119c75af707502b20e69c88.png)](https://gyazo.com/658d4b045119c75af707502b20e69c88)
  

# 開発環境
- フロントエンド：Ruby(Ruby on Rails)
- バックエンド：Ruby(Ruby on Rails)
<!-- - インフラ：
- テスト： -->
- テキストエディタ：Visual Studio Code
- タスク管理：GitHub

# ローカルでの動作方法

以下のコマンドを順に実行  
% git clone https://github.com/zskzsk92/sachi_plan.git  
% cd xxxxxxx  
% bundle install  
% yarn install

# 工夫したポイント
準備中