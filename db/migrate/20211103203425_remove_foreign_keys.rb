# frozen_string_literal: true

class RemoveForeignKeys < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :comments, :users
    remove_foreign_key :likes, :posts
    remove_foreign_key :likes, :users

    add_index :comments, :user_id
    add_index :likes, :post_id
    add_index :likes, :user_id
  end
end
