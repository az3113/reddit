class Link < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { minimum: 5}
  validates :url, :content, presence: true
  resourcify
end