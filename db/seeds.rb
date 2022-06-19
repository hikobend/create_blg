User.create!(name: 'Aaユーザー1', email: 'a@a.com', password: 'aaaaaa')
Tag.create!(name: 'Docker')
Tag.create!(name: 'Ruby on Rails')
Profile.create!(profile: "# プロフィール\r\nアイコン挿入\r\n## 自己紹介\r\n### 名前\r\n#### こうへい\r\nアイコン twitter Qiita Github\r\n### 趣味\r\n野球(草野球チームで活動中)\r\n## 学歴\r\n2017年 4月 4年制の大学に入学 数学を専攻\r\n2021年 4月 メーカー系の会社に就職\r\n2022年 4月 転職をして、バックエンドになる\r\n## 担当領域\r\nバックエンド\r\n## スキル\r\n言語 : Ruby\r\nフレームワーク : Ruby on Rails\r\nRDB : MySQL, Redis\r\nSaaS : Github, Github Actions\r\nその他 : Docker\r\n## 業務経歴\r\n#### 管理顧客台帳 【Ruby on Rails】(2022年4月〜)\r\n【プロジェクト概要】\r\n店舗、支店ごとの顧客一覧を管理\r\n【担当した業務】\r\n・Ruby on Railsを用いてバックエンド開発\r\n・Github Actionsを用いてCIのパイプライン設計\r\n【発揮したバリュー】")
11.times do |i|
  Post.create!(title: "投稿#{i+1}", tag: "Ruby", photo: nil, body: "## こんにちは\r\nなんとなくです。")
end