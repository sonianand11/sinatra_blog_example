class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
