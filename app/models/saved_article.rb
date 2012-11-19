class SavedArticle < ActiveRecord::Base

  belongs_to :user
  belongs_to :article 

  validates :user_id, :presence => true,
            :uniqueness => {:scope => [:article_id], :message => "article is already saved."}
  validates :article_id, :presence => true,
            :uniqueness => {:scope => [:user_id], :message => "article is already saved."}

 protected

  def associate_user
    unless self.user_id
      return self.user_id = session[:user_id] if session[:user_id]
      return false
    end
  end

end
