class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :name
      t.string :gender
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
