class Folder < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :documents
end
