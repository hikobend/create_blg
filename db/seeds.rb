User.create!(name: 'Aaユーザー1', email: 'a@a.com', password: 'aaaaaa')
Tag.create!(name: 'Docker')
Tag.create!(name: 'Ruby on Rails')
11.times do |i|
  Post.create!(title: "投稿#{i+1}", tag: "Ruby", photo: nil, body: "## こんにちは\r\nなんとなくです。")
end