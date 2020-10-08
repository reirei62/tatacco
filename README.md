# README

# :information_desk_person:他己紹介アプリTaqoo

[![Image from Gyazo](https://i.gyazo.com/3f802e8c3f6e2979c1b50b2a31613177.gif)](https://gyazo.com/3f802e8c3f6e2979c1b50b2a31613177)

## :file_folder:開発環境
<ul>
 <li>Ruby on Rails</li>
 <li>JavaScript</li>
 <li>HTML,CSS</li>
 <li>heroku</li>
 <li>VScode</li>
 <li>Github</li>
</ul>

## :globe_with_meridians:AppURL
### https://taqoo.herokuapp.com/

## 機能

 
 * 紹介文公開機能（rails)
 
 紹介文は書かれた本人が許可することで初めて公開されるようにし,紹介される本人と閲覧者では公開される画面が変わるよう設定しました
 
 紹介される側目線
  [![Image from Gyazo](https://i.gyazo.com/ccdc11a0d1ccf0032ef02ccabbdf967a.png)](https://gyazo.com/ccdc11a0d1ccf0032ef02ccabbdf967a) 
 閲覧者目線
  [![Image from Gyazo](https://i.gyazo.com/f770e63f79907cb3a1068426e8277b16.png)](https://gyazo.com/f770e63f79907cb3a1068426e8277b16)
 
 * 文字数カウント機能（JavaScript)
 
 文字数をカウントし上限である100文字を超えると赤く表示されます
  [![Image from Gyazo](https://i.gyazo.com/f53fa4b7db195db21a5488c430fe3d11.gif)](https://gyazo.com/f53fa4b7db195db21a5488c430fe3d11)
  
## :memo:Usage

#### 紹介する側
 1. 右記TwitterアカウントのプロフィールのリンクからTaqooのマイページに飛んでください
 [Twitter](https://twitter.com/test49743817/status/1314156123251826688?s=21)
 
 2. 右下にある紹介文を作成をクリックしてください
 
 3. 下記アカウントでログインしてください
 <ul>
  <li>メールアドレス: test4@com</li>
  <li>パスワード: testplayer4</li>
 </ul>
 
 4. 紹介文作成画面に移動するのでエピソード、関係性を適当に記述し作成ボタンを押してください
  [![Image from Gyazo](https://i.gyazo.com/8e8f6e7833acb45ac87e9425ffa60bc7.gif)](https://gyazo.com/8e8f6e7833acb45ac87e9425ffa60bc7)
 
 5. ログアウトしてください
 
 #### 紹介される側
1. 右上のログインボタンを押し下記アカウントでログインしてください
 <ul>
  <li>メールアドレス: test3@com</li>
  <li>パスワード: testplayer3</li>
 </ul>
 
 2. ログイン後右上に表示される名前部分であるテストをクリックしマイページに飛びます
 
 3. 先ほど紹介する側で入力したものが新規紹介文として届いているのを確認できます
    ここで公開を押せば他の人からも見えるようになり、削除を押すと紹介文は削除されます
 
 4. ログアウトしログインしていない状態で先ほどのTwitterプロフィールにあるリンクに飛ぶと紹介文が追加されているのを確認できます


# テーブル設計
 
## users テーブル

| Column        | Type | Options   |
|---------------|------|-----------|
| nickname      |string|null: false|
| email         |string|null: false|
| password      |string|null: false|
| birth         |date  |null: false|


###Association
- has_many :introductions
- has_one :board

## introductions テーブル

| Column     | Type   |  Options   |
|------------|--------|------------|
| user       |references|null: false, foreign_key: true |
| board      |references|null: false, foreign_key: true |
| content    |text    | null: false|
| category_id   |integer | null: false|
| permission  |boolean | 


###Association
- belongs_to :user
- belongs_to :board


## boards　テーブル

| Column     | Type    |   Options    |
|------------|---------|--------------|
| user       |references|null: false, foreign_key: true  |

###Association
- belongs_to :user
- has_many :introductions

# 要件定義
https://docs.google.com/spreadsheets/d/1cjaxvRLaT750uWZraD51afs8aEI-rprZ30EzXG9wCAk/edit?usp=sharing
