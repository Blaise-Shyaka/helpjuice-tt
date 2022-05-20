class Query < ApplicationRecord
  validates_presence_of :name
  validates_length_of :name, minimum: 5, maximum: 2000

  has_many :searches
  has_many :users, through: :searches
end
