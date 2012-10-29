class PubmedController < ApplicationController
  include PubmedHelper
  
  def index
    render 'search'
  end

  def search
    connector = "AND"
    medical_field = "Anesthesia"
    if params[:major_topic] != nil && params[:major_topic] != ""
      search_query = "#{params[:major_topic]}[MeSH Major Topic]"
    end
    if params[:subheading] != nil && params[:subheading] != ""
      search_query = "(" + search_query + ") " + connector + " #{params[:subheading]}[MeSH Subheading]"
    end
    if params[:terms] != nil && params[:terms] != ""
      search_query = "(" + search_query + ") " + connector + " #{params[:terms]}[MeSH Terms]"
    end
    if search_query != nil && params[:search_term] != nil && params[:search_term] != ""
      search_query = "((" + search_query + ") AND Anesthesia[MeSH Terms]) OR #{params[:search_term]}"
    elsif search_query == nil && params[:search_term] != nil && params[:search_term] != ""
      search_query = "(Anesthesia[MeSH Terms]) OR #{params[:search_term]}"
    elsif search_query != nil && params[:search_term] == nil || params[:search_term] == ""
      search_query = "(" + search_query + ") AND Anesthesia[MeSH Terms]"
    else
      search_query = "Anesthesia[MeSH Terms]"
    end
    session[:subheading] = params[:subheading]
    session[:terms] = params[:terms]
    session[:search_term] = params[:search_term]
    session[:major_topic] = params[:major_topic]
    #search_query = "((((#{params[:major_topic]}[Mesh Major Topic]) OR #{params[:subheading]}[MeSH Subheading]) OR #{params[:terms]}[MeSH Terms])) OR Anesthesia[Mesh Terms]) OR #{params[:search_term]}"
    puts search_query
    search_results = PubmedSearch.search(search_query)
    @articleIDList = search_results.pmids
    @results = ArticleXMLParser.new(@articleIDList)

    render 'results'
  end

end


