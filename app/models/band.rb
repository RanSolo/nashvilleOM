class Band < ActiveRecord::Base
  has_many :events, dependent: :destroy
  mount_uploader :avatar, AvatarUploader
end
