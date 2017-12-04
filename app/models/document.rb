class Document < ApplicationRecord
  belongs_to :folder
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
end
