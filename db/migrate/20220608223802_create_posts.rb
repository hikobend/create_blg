class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :tag
      t.integer :photo
      t.text :body
      t.timestamps
    end
  end
end
