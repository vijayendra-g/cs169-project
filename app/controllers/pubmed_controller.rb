class PubmedController < ApplicationController
  include PubmedHelper
  
  def index
    session[:search_term] = nil
    render 'search'
  end
  
  def requestPubmed(search_query)
    PubmedSearch.search(search_query)
  end
  
  def parseArticles(articleIDList, parameters)
    ArticleXMLParser.new(articleIDList, parameters)
  end

  def search
    if params[:search_term].blank?
	flash[:notice] = "Please input a search term"
	session[:search_term] = nil
	redirect_to root_path
	return
    end
    connector = 'AND'
    medical_field = nil
    if current_user
      if not current_user.preference.nil?
        medical_field = current_user.preference
      end
    end
    if medical_field.nil?
    	search_query = params[:search_term]
    else
	    search_query = "(" + params[:search_term] + ") " + connector + " " + medical_field + "[MeSH Terms]"
    end
    puts "Search query is " + search_query
    search_results = requestPubmed(search_query)    
    @articleIDList = search_results.pmids
    @results = parseArticles(@articleIDList, params[:search_term])
    @current_results = Array.new
    @results.each do |result|
      @current_results.push(result)
    end
    @current_results = Kaminari::PaginatableArray.new(@current_results).page(params[:page]).per(10)
    session[:search_term] = params[:search_term]

    render 'results'

  end

end
