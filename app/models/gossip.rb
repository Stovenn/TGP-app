class Gossip < ApplicationRecord
  belongs_to :user
  has_many :gossiptagjoins
  has_many :tags, through: :gossiptagjoins 
end
