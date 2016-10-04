class ChangeComments < ActiveRecord::Migration
  def change
    change_column(:comments, :commentable_id, :integer, null: false, index: true)
    change_column(:comments, :commentable_type, :integer, null: false, index: true)
  end
end
