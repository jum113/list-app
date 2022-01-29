# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :notes

## notes テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title   | string     |                                |
| content | text       |                                |
| user    | references | null: false, foreign_key: true |
| folder  | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## lists テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| list   | string     | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association

- belongs_to :user