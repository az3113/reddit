class Link < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 5}
  validates :url, presence: true
end