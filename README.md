# README
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
-has_many :task_contents

## task_contentsテーブル

| Column    | Type       | Options                       |
| --------- | ---------- | ----------------------------- |
| content   | string     | null: false                   |
| memo      | text       |                               |
| task_list | references | null: false,foreign_key: true |

### Association
- belongs_to :task_list
