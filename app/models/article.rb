class Article < ApplicationRecord
  include PgSearch

  validates_presence_of :title, :description, :article_url
  validates_length_of :title, minimum: 5, maximum: 200
  validates_length_of :description, minimum: 5, maximum: 2000
  validates_length_of :article_url, minimum: 5, maximum: 1000

  pg_search_scope :search_by_article_title, against: :title, using: {tsearch: {prefix: true}}
end
