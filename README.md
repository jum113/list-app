# アプリケーション名
list-app

# アプリケーション概要
やる事リストを作成し、リストに対する注意事項等をメモに記入して、やるべき事を明確にし忘れない様にできる。

# URL
https://list-app-37254.herokuapp.com/

# テスト用アカウント
- メールアドレス : test@test
- パスワード : test123

# 利用方法

## ToDoリスト作成
1. アプリにアクセスするとログイン画面に遷移するので、ログイン画面のリンクからサインアップ画面に遷移し新規アカウントを作成する。
2. ToDoリスト作成フォームにリストテキストを入力し、作成ボタンを押下して作成する。

## メモ作成
1. ToDoリストに対して確認事項や注意事項がある場合は、メモ作成アイコンからフォームを呼び出し、タイトルとテキストを入力して作成ボタンを押下し、メモを作成する。
（作成したメモは、タイトルで検索可能）

# アプリケーションを作成した背景
親を見ていて、少し前に言った事を忘れている等、昔より忘れっぽくなったと感じた。課題を分析した結果、「メモを取る習慣が無い」という事が原因であると仮説を立てた。同様の問題を抱えている方も多いと推測し、原因を解決するために、やる事リストを作成出来て、リストに対する注意事項等の細かいことをメモに書き起こしておく事のできるアプリケーションを開発することにした。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1dhrOOms_4Rw4cDQEhmtyEC_O0-WoxsUoUlGAt4mlOLQ/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明
- ログインしていない場合、ログインページへ遷移する。
[![Image from Gyazo](https://i.gyazo.com/aac95ef2437b888fd4ebb948b657bcbf.gif)](https://gyazo.com/aac95ef2437b888fd4ebb948b657bcbf)

- 新規登録ページへ遷移し、新規アカウントを作成する。
[![Image from Gyazo](https://i.gyazo.com/d4fd12a311dccc95202d2ddb54cf98da.gif)](https://gyazo.com/d4fd12a311dccc95202d2ddb54cf98da)

- ログイン・ログアウトする。
[![Image from Gyazo](https://i.gyazo.com/abb226e8f027dbda0421ec93adc23b97.gif)](https://gyazo.com/abb226e8f027dbda0421ec93adc23b97)

- 新規登録とログインの際に、入力漏れがあった場合、エラーが表示される。
[![Image from Gyazo](https://i.gyazo.com/e771e2d90956719d61a364a0aaeb80a0.gif)](https://gyazo.com/e771e2d90956719d61a364a0aaeb80a0)

- ToDoリストを作成する。ToDoリストを削除する。
[![Image from Gyazo](https://i.gyazo.com/cb33ff1e08e2946d166dff8d01973e82.gif)](https://gyazo.com/cb33ff1e08e2946d166dff8d01973e82)

- メモを作成する。メモを削除する。
[![Image from Gyazo](https://i.gyazo.com/e46eef564fb65472be8de308fb04fde7.gif)](https://gyazo.com/e46eef564fb65472be8de308fb04fde7)

- 作成したメモをキーワード検索する。
[![Image from Gyazo](https://i.gyazo.com/69e94da65542d2daf25093f6d537e658.gif)](https://gyazo.com/69e94da65542d2daf25093f6d537e658)

# 実装予定の機能
現在、ユーザー編集機能を実装中。
今後はフォント装飾機能やタグ付け機能を実装予定。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/8d1a177a80aa62ca8fa68a8ec94a0684.png)](https://gyazo.com/8d1a177a80aa62ca8fa68a8ec94a0684)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/1131ebac466f298199bda7a180ce087e.png)](https://gyazo.com/1131ebac466f298199bda7a180ce087e)

# 開発環境
- フロントエンド
- バックエンド
- インフラ
- テスト
- テキストエディタ

# ローカルでの動作方法
以下のコマンドを順に実行。<br>
% git clone https://github.com/xxxxxx  
% cd xxxxxx  
% bundle install  
% yarn install

# 工夫したポイント
- javascriptを用いて非同期通信で保存処理を行ったこと。
- ユーザー管理機能以外は1ページで作成し、ページ遷移無しで実装していること。