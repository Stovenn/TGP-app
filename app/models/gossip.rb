class Gossip < ApplicationRecord
  belongs_to :user

  validates :title, :content, presence: true 
  validates :title, length: { minimum: 3 }
end
