class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  mount_uploader :avatar, AvatarUploader
end
