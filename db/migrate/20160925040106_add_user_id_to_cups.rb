class AddUserIdToCups < ActiveRecord::Migration[5.0]
  def change
    add_column :cups, :user_id, :integer
  end
end
