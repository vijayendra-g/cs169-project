class PubmedController < ApplicationController
  include PubmedHelper
  def index
    render 'search'
  end

  def search
    search_query = "(((#(params[:major_topic])[Mesh Major Topic]) AND #(params[:subheading])[MeSH Subheading]) AND #(params[:terms])[MeSH Terms]) AND #(params[:search_term])"
    puts search_query
    search_results = PubmedSearch.search(params[:search_term])
    @articleIDList = search_results.pmids
    puts @articleIDList[0]
    @results = ArticleXMLParser.new(@articleIDList) #names should be changed

  end

end


