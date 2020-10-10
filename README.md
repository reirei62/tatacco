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

## :computer:機能
 * 紹介文作成機能(rails)
 
 SNSにTaqooのマイページURLを公開し、他のユーザーに紹介してもらう、あるいは他の人を紹介することができます
 [![Image from Gyazo](https://i.gyazo.com/deb6cb3d78ee71cdea6ccaefc5c5c29f.png)](https://gyazo.com/deb6cb3d78ee71cdea6ccaefc5c5c29f)
 
 * 紹介文公開機能（rails)
 
 紹介文は書かれた本人が許可することで初めて公開されるようにし,紹介される本人と閲覧者では公開される画面が変わるよう設定しました
 
 紹介される側目線
  [![Image from Gyazo](https://i.gyazo.com/ccdc11a0d1ccf0032ef02ccabbdf967a.png)](https://gyazo.com/ccdc11a0d1ccf0032ef02ccabbdf967a) 
 閲覧者目線
  [![Image from Gyazo](https://i.gyazo.com/f770e63f79907cb3a1068426e8277b16.png)](https://gyazo.com/f770e63f79907cb3a1068426e8277b16)
 
 * 文字数カウント機能（JavaScript)
 
 文字数をカウントし上限である100文字を超えると赤く表示されます
  [![Image from Gyazo](https://i.gyazo.com/f53fa4b7db195db21a5488c430fe3d11.gif)](https://gyazo.com/f53fa4b7db195db21a5488c430fe3d11)
  
 * URLコピー機能(JavaScript)
 
 マイページのURLをコピーすることができます
 [![Image from Gyazo](https://i.gyazo.com/b20c92a646e3d17ed27698d96d8d0fdd.gif)](https://gyazo.com/b20c92a646e3d17ed27698d96d8d0fdd)
## :memo:使用方法

* このアプリはSNSのプロフィール欄にマイページのリンクを貼って使用します

#### 紹介する側
Twitterを使用しているタコラ(test用アカウント）さんを紹介していきます
 1. 右記Twitterリンクの先にあるアカウントのプロフィールのリンクからTaqooのマイページに飛んでください
 [タコラ(test)のTwitter](https://twitter.com/test49743817/status/1314156123251826688?s=21)
 
 [![Image from Gyazo](https://i.gyazo.com/ad62005e3914526f42af18a192212df6.png)](https://gyazo.com/ad62005e3914526f42af18a192212df6)
 
 2. 右下にある紹介文を作成をクリックしてください
 [![Image from Gyazo](https://i.gyazo.com/7806e805ac7cab48489fba3577f03dcc.png)](https://gyazo.com/7806e805ac7cab48489fba3577f03dcc)
 
 3. 下記アカウントでログインしてください
 <ul>
  <li>メールアドレス: test4@com</li>
  <li>パスワード: testplayer4</li>
 </ul>
 
 4. 紹介文作成画面に移動するのでエピソード、関係性を適当に記述し作成ボタンを押してください
[![Image from Gyazo](https://i.gyazo.com/d4c03aed313137176cbbe85258a80e6a.gif)](https://gyazo.com/d4c03aed313137176cbbe85258a80e6a)
 
 5. ログアウトしてください
 
 #### 紹介される側
  * 先ほど紹介文を書いてもらったタコラ(test)さん側の挙動を確認します
1. 右上のログインボタンを押し下記アカウントでログインしてください
 <ul>
  <li>メールアドレス: test6@com</li>
  <li>パスワード: testplayer6</li>
 </ul>
 
 [![Image from Gyazo](https://i.gyazo.com/7fe18d5da73bd95f144d9fa7c7e260a6.png)](https://gyazo.com/7fe18d5da73bd95f144d9fa7c7e260a6)
 
 2. ログイン後右上に表示される名前部分であるタコラをクリックしマイページに飛びます
 
 3. 先ほど紹介する側で入力したものが新規紹介文として届いているのを確認できます
    ここで公開を押せば他の人からも見えるようになり、削除を押すと紹介文は削除されます
    [![Image from Gyazo](https://i.gyazo.com/f3a6933d250860bc92b283fdd63ba4e3.gif)](https://gyazo.com/f3a6933d250860bc92b283fdd63ba4e3)
 
 4. ログアウトしログインしていない状態で先ほどのTwitterプロフィールにあるリンクにもう一度飛ぶと紹介文が追加されているのを確認できます
[![Image from Gyazo](https://i.gyazo.com/649095f85e7d0186f7cc474f45ea1dc7.png)](https://gyazo.com/649095f85e7d0186f7cc474f45ea1dc7)

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
