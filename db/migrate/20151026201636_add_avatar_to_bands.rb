
class AddAvatarToBands < ActiveRecord::Migration
  def change
    add_column :bands, :avatar, :string
    add_column :bands, :remote_avatar_url, :string
  end
end
