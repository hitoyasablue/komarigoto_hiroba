## アプリ名
困りごとひろば

## アプリの概要
困りごとひろばは、ユーザーの困りごとの緩和を目的としたアプリです。
ユーザーは今自分が持つ困りごとを投稿することができ、投稿は全てのユーザーに共有されます。
ユーザーは各投稿に対して「そうなんだ」「おうえん」などのリアクションをすることができ、
リアクションを受けたユーザーは通知ページでそれを知ることができます。

困りごと投稿の質問項目には例えば以下のようなものがあります。
- 今どんなことに困っていますか？
- あなたが今感じていることを、なんでも記入してください

## アプリURL
https://komarigotohiroba.com/

## アプリのスクリーンショット
<img src="https://user-images.githubusercontent.com/66470480/117677818-c37a4a80-b1e9-11eb-80b7-42461d8e0ff1.png" width="700px">
<img src="https://user-images.githubusercontent.com/66470480/117677831-c6753b00-b1e9-11eb-9fb9-5a4b05bf4ac7.png" width="700px">
<img src="https://user-images.githubusercontent.com/66470480/124922531-8ccb7f80-e034-11eb-8c5a-2d4b1875ab62.png" width="700px">


## 使用した技術
- Ruby 2.7.1
- Ruby on Rails 6.0.3.2
- MySQL 5.7
- Git, Github
- Docker, docker-compose
- RSpec
- RuboCop
- AWS
  - ECS（fargate）
  - ECR
  - RDS
  - Route53
  - ALB
  - CloudWatch

## 機能一覧
- ログイン, ログアウト機能
- 投稿, 投稿一覧機能
- コメント機能
- いいね機能（ajaxの考え方で実装）
- 通知機能
- モーダルウィンドウによるSNS共有ボタン表示機能
- 検索機能（ransackを用いて実装）
- ページネーション機能（kaminariを用いて実装）
- 運営への募金機能（Stripeを用いて実装）
- レスポンシブデザイン

## AWS構成図
![image](https://user-images.githubusercontent.com/66470480/117675907-fd4a5180-b1e7-11eb-9a03-d612043da824.png)

