class AddExtraColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    change_column
    remove_column
    create_table
    remove_table
  end
end
