class RemoveLinksFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :link, :string
    remove_column :events, :link2, :string
    remove_column :events, :link3, :string
  end
end
