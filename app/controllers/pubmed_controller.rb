class PubmedController < ApplicationController
  def index
    render 'search'
  end
  def search
    @results = PubmedSearch.search(params[:search_term])
    @pmids = @results.pmids
    puts @pmids.length
    puts @pmids[1]
  end

end
