class PubmedController < ApplicationController
  include PubmedHelper
  
  def index
    render 'search'
  end

  def search
    connector = "OR"
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
    #search_query = "((((#{params[:major_topic]}[Mesh Major Topic]) OR #{params[:subheading]}[MeSH Subheading]) OR #{params[:terms]}[MeSH Terms])) OR Anesthesia[Mesh Terms]) OR #{params[:search_term]}"
    puts search_query
    search_results = PubmedSearch.search(search_query)
    @articleIDList = search_results.pmids
    @results = ArticleXMLParser.new(@articleIDList) #names should be changed
    i = 0
    @results.each do |result|
        break if i > 5
	puts "Abstract:     " + result.abstract.to_s
	puts "Title:        " + result.title.to_s
	puts "Id:           " + result.id.to_s
	puts "Date:         " + result.date.to_s
        i = i + 1
    end
    puts "We have " + i.to_s + " articles"
    render 'results'
  end

end


