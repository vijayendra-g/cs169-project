class UserController < ApplicationController


  def save_article
    logger.info("inside controller saving article")
    logger.info(params[:article_id])
    current_user.save_article(params[:article_id], params[:article_title], params[:user_id])
    redirect_to saved_articles_path
  end

  def unsave_article
    logger.info("inside controller unsaving article")
    current_user.unsave_article(params[:article_id], params[:article_title], params[:user_id])
    redirect_to saved_articles_path
  end

  def saved_articles
    @saved_articles = []
    current_user.get_saved_articles().each do |article|
      @saved_articles << Article.find(article.article_id)
    end
    render saved_articles
  end
end

