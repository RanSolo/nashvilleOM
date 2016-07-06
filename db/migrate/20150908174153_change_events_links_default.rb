class ChangeEventsLinksDefault < ActiveRecord::Migration
  def change
    change_column_default(:events, :links, nil)
  end
end
