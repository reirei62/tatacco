# README

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

# テーブル設計
 
## users テーブル

| Column        | Type | Options   |
|---------------|------|-----------|
| nickname      |string|null: false|
| email         |string|null: false|
| password      |string|null: false|
| birth         |date  |null: false|
| tatacco_id    |string|null: false|

###Association
- has_many :introductions

## introductions テーブル

| Column     | Type   |  Options   |
|------------|--------|------------|
| user       |references|null: false, foreign_key: true |
| content    |text    | null: false|
| category_id   |integer | null: false|
| permission  |boolean | |


###Association
- belongs_to :user
