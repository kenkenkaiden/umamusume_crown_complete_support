# ウマ娘全冠支援ツール

# アプリケーション概要
アプリ「ウマ娘 プリティーダービー」の全冠達成を目指す、全てのトレーナーのサポートをするツール。  
主な機能（目下実装中）  
・ユーザー登録機能  
・所持ウマ娘の登録  
・ウマ娘ごとの獲得トロフィー状況登録および確認  
 


# URL※
デプロイが完了次第記載予定。


# テスト用アカウント
<!--ログイン機能等を実装した場合は、ログインに必要な情報を記載。またBasic認証等を設けている場合は、そのID/Passも記載すること。
利用方法	このアプリケーションの利用方法を記載。説明が長い場合は、箇条書きでリスト化すること。-->

#  アプリケーションを作成した背景

<!--このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記載。-->
全冠を達成したいと考えているトレーナー（プレイヤー）が、もっと手軽に自分のウマ娘のトロフィー獲得状況を把握したり効率のいいローテーションを組んだりできないかと考えた。  
2023年9月現在、ウマ娘の育成モードから個別のトロフィー獲得状況を一目で確認できるような機能やトロフィー獲得に特化したローテーションの自動提案機能が備わっておらず、逐一プレイヤー側で確認を取ったり出走レースを調整及び計算する必要がある。  
一回当たりのプレイ時間がどうしても長くなりがちなゲームなので、少しでも効率よく全冠狙いができるようになればと思い開発に取り組んだ。


# 洗い出した要件
[要件定義をまとめたスプレッドシート](https://docs.google.com/spreadsheets/d/13SQGBESN54ATM9XBtp8xRCtVEFcw-L7sh4724jNfAJ0/edit#gid=982722306)


# 実装した機能についての画像やGIFおよびその説明※

# 実装予定の機能
・所持サポカの登録  
・ウマ娘とトロフィー獲得状況、サポカ情報を基にしたおすすめローテーションの提案  
・ローテーションに合わせたおすすめサポカの提案 

# データベース設計
## ER図
[![ER図](https://i.gyazo.com/eb1432ba665efbdec91472d26ed46b31.png)](https://gyazo.com/eb1432ba665efbdec91472d26ed46b31)
## テーブル設計
実際にテーブル作成がされていないものもあります。  
2023年9月27日現在の構想となります。
### usersテーブル
| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| traner_id          | integer | null: false, unique: true |
| comment            | string  |                           |
| twitter_id         | string  | unique: true              |
#### Association
#### トレーナーは1人で何人もウマ娘を担当できる（所持できる）  
has_many :umamusumes
#### トレーナーは1人で何枚もサポートカードを所持できる  
has_many :support_cards


### umamusumesテーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| name               | string     | null: false                    |
| turf               | string     | null: false                    |
| dirt               | string     | null: false                    |
| sprint             | string     | null: false                    |
| mile               | string     | null: false                    |
| intermediate       | string     | null: false                    |
| long               | string     | null: false                    |
| user               | references | null: false, foreign_key: true |
#### Association
#### 複数のウマ娘が同じトレーナーに所属している
belongs_to :user
#### ウマ娘はいくつもの目標レースを持っている
#### ウマ娘は何らかの対応するレースがないと登録ができないわけではないので、親と子の関係ではない
has_many :target_races  
has_many :races, through: :target_races  
#### ウマ娘は1人につき、いくつもの勝利済みレースを記録できる
has_many :record_of_wins  
has_many :races, through: :record_of_wins


### racesテーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| name               | string     | null: false                    |
| grade              | string     | null: false                    |
| surface            | string     | null: false                    |
| distance           | string     | null: false                    |
| meter              | integer    | null: false                    |
| date_1             | string     | null: false                    |
| date_2             | string     | null: false                    |
| course             | integer    | null: false                    |
#### Association
#### 一つのレースが何人ものウマ娘の目標レースとなる場合があるし、どのウマ娘の目標レースでもない場合もある
#### レースはウマ娘がいないと存在できないわけではないので、親と子の関係ではない
has_many :target_races  
has_many :umamusumes, through: :target_races  
#### 各レースごとにウマ娘の勝利記録を何人分も記録できる
has_many :record_of_wins  
has_many :umamusumes, through: :record_of_wins  

### support_cardsテーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| name               | string     | null: false                    |
| user               | references | null: false, foreign_key: true |
#### Association
#### 複数のサポカが同じトレーナーに保管されている
belongs_to :user


### target_racesテーブル（ウマ娘の目標レースを管理する中間テーブル）
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| umamusume          | references | null: false, foreign_key: true |
| race               | references | null: false, foreign_key: true |
#### Association
belongs_to :umamusume  
belongs_to :race  

### record_of_winsテーブル（ウマ娘の勝利済みレースを管理する中間テーブル）
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| umamusume          | references | null: false, foreign_key: true |
| race               | references | null: false, foreign_key: true |
#### Association
belongs_to :umamusume  
belongs_to :race  


# 画面遷移図
[![画面遷移図](https://i.gyazo.com/1b943cd961ce7025b315aab13bf2ac8d.png)](https://gyazo.com/1b943cd961ce7025b315aab13bf2ac8d)

# 開発環境
・バックエンド…Ruby on Rails  
・エディタ…VS code  
・開発環境中のデータベース…DBeaver

# ローカルでの動作方法※
<!--実装した機能について、それぞれどのような特徴があるのかを列挙する形で記載。画像はGyazoで、GIFはGyazoGIFで撮影すること。-->

# 工夫したポイント※
<!--制作背景・使用技術・開発方法・タスク管理など、企業へＰＲしたい事柄を記載。-->