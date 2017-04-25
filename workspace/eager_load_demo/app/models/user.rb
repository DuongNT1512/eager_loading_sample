class User < ApplicationRecord
  has_many :addresses
  validates :name, presence: true
end
