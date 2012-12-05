class User < ActiveRecord::Base
  has_many :saved_articles

  def saved?(pubmed_article_id)
    if not (article_id = Article.find_by_pubmed_id(pubmed_article_id))
      return false
    end
    if self.saved_articles.exists?(:article_id => article_id, :user_id =>self.id)
      return true
    else
      return false
    end
  end

  def get_preference()
		return self.preference
  end


  def add_preference(preference)
		self.update_attributes(:preference => preference)
  end

  def save_article(pubmed_article_id, article_title)
    #logger.info("inside model save_article")
    if not (article = Article.find_by_pubmed_id(pubmed_article_id))
      article = Article.create(:pubmed_id => pubmed_article_id, :title => article_title)
      #logger.info("created article")
      #logger.info(article)
    end
    saved_article = SavedArticle.create(:article_id => article.id, :user_id => self.id)
    #logger.info("Created saved_article")
    #logger.info(saved_article)
    return
  end

  def unsave_article(pubmed_article_id)
    #logger.info("inside model unsave_article")
    article_id = Article.find_by_pubmed_id(pubmed_article_id)
    article = SavedArticle.where("article_id = ? AND user_id = ?", article_id, self.id)
    if article.size > 0
     	article[0].destroy
    	#logger.info("Unsaved article")
    end
    return
  end

  def delete_article(article_id)
    #logger.info("inside model delete_article")
    article = SavedArticle.where("article_id = ? AND user_id = ?", article_id, self.id)
    if article.size > 0
    	article[0].destroy
	    #logger.info("Deleted article")
    end
    return
  end

  def get_saved_articles()
    #logger.info(self.id)
    articles = self.saved_articles
    #logger.info(articles)
    return articles
  end

  def self.from_omniauth(auth)
    find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end
end

