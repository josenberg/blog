class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.references :user, index: true
      t.text :body

      t.timestamps null: false
    end
    add_foreign_key :posts, :users
  end
end
