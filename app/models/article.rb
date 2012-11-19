class Article < ActiveRecord::Base
  has_many :saved_articles
  validates_uniqueness_of :pubmed_id


end
