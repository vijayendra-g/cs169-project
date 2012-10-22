class PubmedController < ApplicationController
  include PubmedHelper
  def index
    render 'search'
  end

  def search
   
    search_query = "(((#{params[:major_topic]}[Mesh Major Topic]) AND #{params[:subheading]}[MeSH Subheading]) AND #{params[:terms]}[MeSH Terms]) AND #{params[:search_term]}"
    puts search_query
    search_results = PubmedSearch.search(params[:search_term])
    @articleIDList = search_results.pmids
    @results = ArticleXMLParser.new(@articleIDList) #names should be changed
    @results.each do |result|
	puts "Abstract:     " + result.abstract.to_s
	puts "Title:        " + result.title.to_s
	puts "Id:           " + result.id.to_s
	puts "Date:         " + result.date.to_s
	break
    end
    render 'results'
  end

end


