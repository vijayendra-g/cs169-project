class PubmedController < ApplicationController
  include PubmedHelper
  def index
    render 'search'
  end

  def search
    search_results = PubmedSearch.search(params[:search_term])
    @articleIDList = search_results.pmids
    @results = ArticleXMLParser.new(@articleIDList) #names should be changed

  end

end


