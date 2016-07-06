class AddBioToBands < ActiveRecord::Migration
  def change
    add_column :bands, :bio, :string
  end
end
