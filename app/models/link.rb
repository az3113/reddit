class Link < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5}
  validates :url, presence: true
end