class AddLinksToBands < ActiveRecord::Migration
  def change
    add_column :bands, :link2, :string
    add_column :bands, :link3, :string
  end
end
