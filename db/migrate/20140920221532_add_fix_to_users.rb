class AddFixToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_has_name, :string
  end
end
