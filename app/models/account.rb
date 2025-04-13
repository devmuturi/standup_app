class Account < ApplicationRecord
  resourcify
  has_many :users
  validates :name, presence: true
end
