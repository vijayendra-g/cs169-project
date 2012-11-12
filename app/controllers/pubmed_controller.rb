class PubmedController < ApplicationController
  include PubmedHelper
  
  def index
    session[:search_term] = nil
    render 'search'
  end

  def search
    if params[:search_term].blank?
	flash[:notice] = "Please input a search term"
	session[:search_term] = nil
	redirect_to root_path
	return
    end
    connector = 'AND'
    medical_field = "Anesthesia"
    search_query = "(" + params[:search_term] + ") " + connector + " " + medical_field +"[MeSH Terms]"
    
    #puts "Search query is " + search_query
    search_results = PubmedSearch.search(search_query)
    @articleIDList = search_results.pmids
    @results = ArticleXMLParser.new(@articleIDList, params[:search_term]) #names should be changed
    @current_results = Array.new
    @results.each do |result|
      @current_results.push(result)
    end
    @current_results = Kaminari::PaginatableArray.new(@current_results).page(params[:page]).per(10)
    #i = 0
    #@results.each do |result|
    #    break if i > 5
    #    puts "Abstract:     " + result.abstract.to_s
    #    puts "Title:        " + result.title.to_s
    #    puts "Id:           " + result.id.to_s
    #    puts "Date:         " + result.date.to_s
    #    i = i + 1
    #end
    #puts "We have " + i.to_s + " articles"
    session[:search_term] = params[:search_term]

    render 'results'

  end

end
