class ChangeEventsLinksToSingularLink < ActiveRecord::Migration
  def change
    remove_column :events, :links
    add_column :events, :link, :string
    add_column :events, :link2, :string
    add_column :events, :link3, :string
  end
end
