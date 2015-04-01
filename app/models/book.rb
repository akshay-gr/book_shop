class Book < ActiveRecord::Base
  validates :title, :author, :cover_image, presence: true

  mount_uploader :cover_image, CoverImageUploader
end
