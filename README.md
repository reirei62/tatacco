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
| permission  |boolean | |


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
