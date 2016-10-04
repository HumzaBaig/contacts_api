class ChangeColumnComments < ActiveRecord::Migration
  def change
    change_column :comments, :commentable_type, :string, null: false, index: true
  end
end
