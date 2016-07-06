class AddHometownToBands < ActiveRecord::Migration
  def change
    add_column :bands, :hometown, :string
  end
end
