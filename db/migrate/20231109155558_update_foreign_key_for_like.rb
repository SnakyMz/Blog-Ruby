class UpdateForeignKeyForLike < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :likes, :users
    add_foreign_key :likes, :users, on_delete: :cascade

    remove_foreign_key :likes, :posts
    add_foreign_key :likes, :posts, on_delete: :cascade
  end
end
