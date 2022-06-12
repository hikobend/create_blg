class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      # 題名
      t.string :title
      # tag選択
      t.string :tag
      # 写真選択
      t.integer :photo
      # 文章
      t.text :body

      t.timestamps
    end
  end
end
