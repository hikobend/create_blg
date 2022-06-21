class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name_sei
      t.string :name_mei
      t.string :email

      t.timestamps
    end
  end
end
