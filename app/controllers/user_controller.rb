class UserController < ApplicationController


  def save_article
    logger.info("inside controller saving article")
    logger.info(params[:article_id])
    current_user.save_article(params[:article_id], params[:article_title], params[:user_id])
    render :nothing => true

  end

  def unsave_article
    logger.info("inside controller unsaving article")
    current_user.unsave_article(params[:article_id], params[:user_id])
    render :nothing => true
  end

  def delete_article
    logger.info("inside controller delete article")
    current_user.delete_article(params[:article_id], params[:user_id])
    render :nothing => true
  end

  def saved_articles
    @saved_articles = []
    articles = current_user.get_saved_articles()
    articles.each do |article|
      @saved_articles << Article.find(article.article_id)
    end
    render 'saved_articles'
  end

  def preference
    render 'preference'
  end
end

