class SavedArticle < ActiveRecord::Base

  belongs_to :user
  belongs_to :article 

  validates :user_id, :presence => true,
            :uniqueness => {:scope => [:article_id], :message => "article is already saved."}
  validates :article_id, :presence => true,
            :uniqueness => {:scope => [:user_id], :message => "article is already saved."}


end
