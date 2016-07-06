class AddRoleToWelcome < ActiveRecord::Migration
  def change
    add_column :welcomes, :role, :string
  end
end
