class PubmedController < ApplicationController
  include PubmedHelper
  
  def index
    render 'search'
  end

  def search
    connector = "AND"
    puts "Starting topic"
    medical_field = "Anesthesia"

    if params[:major_topic] != nil && params[:major_topic] != ""
      search_query = "#{params[:major_topic]}[MeSH Major Topic]"
    end

    puts "Starting subheading"
    if params[:subheading] != nil && params[:subheading] != "" && search_query != nil
      search_query = "(" + search_query + ") " + connector + " #{params[:subheading]}[MeSH Subheading]"
    elsif params[:subheading] != nil && params[:subheading] != ""
      search_query = "#{params[:subheading]}[MeSH Subheading]"
    end

    puts "Starting terms"
    if params[:terms] != nil && params[:terms] != "" && search_query != nil
      search_query = "(" + search_query + ") " + connector + " #{params[:terms]}[MeSH Terms]"
    elsif params[:terms] != nil && params[:terms] != ""
      search_query = "#{params[:terms]}[MeSH Terms]"
    end

    puts "Starting final"
    if search_query != nil && params[:search_term] != nil && params[:search_term] != ""
      search_query = "((" + search_query + ") " + connector + " Anesthesia[MeSH Terms]) " + connector + " #{params[:search_term]}"
    elsif search_query == nil && params[:search_term] != nil && params[:search_term] != ""
      search_query = "(Anesthesia[MeSH Terms]) " + connector + " #{params[:search_term]}"
    elsif search_query != nil && params[:search_term] == nil || params[:search_term] == ""
      search_query = "(" + search_query + ") " + connector + " Anesthesia[MeSH Terms]"
    else
      search_query = "Anesthesia[MeSH Terms]"
    end

    puts "Search query is " + search_query
    search_results = PubmedSearch.search(search_query)
    @articleIDList = search_results.pmids
    @results = ArticleXMLParser.new(@articleIDList) #names should be changed
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
    session[:subheading] = params[:subheading]
    session[:terms] = params[:terms]
    session[:search_term] = params[:search_term]
    session[:major_topic] = params[:major_topic]
    render 'results'
  end

end
