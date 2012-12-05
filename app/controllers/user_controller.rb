class UserController < ApplicationController


  def save_article
    #logger.info("inside controller saving article")
    logger.info(params[:article_id])
    current_user.save_article(params[:article_id], params[:article_title], params[:user_id])
    if (params[:js] == 1)
      render :nothing => true
    else
      redirect_to saved_articles_path
    end
  end


  def unsave_article
    #logger.info("inside controller unsaving article")
    current_user.unsave_article(params[:article_id], params[:user_id])
    if (params[:js] == 1)
      render :nothing => true
    else
      redirect_to saved_articles_path
    end
  end

  def delete_article
    #logger.info("inside controller delete article")
    current_user.delete_article(params[:article_id], params[:user_id])
    if (current_user.get_saved_articles().size > 0) and (params[:js] == 1)
      logger.info("there are saved articles")
      render :nothing => true
    else
      logger.info("redirecting to saved articles")
      redirect_to saved_articles_path
    end
  end

  def saved_articles
    @saved_articles = []
    articles = current_user.get_saved_articles()
    articles.each do |article|
      @saved_articles << Article.find(article.article_id)
    end

  end

  def preference
    @saved_preference = current_user.get_preference(current_user.id)
		render 'preference'
  end

  def add_preference
    current_user.add_preference(current_user.id, params[:preference])
    redirect_to preference_path
  end

end

