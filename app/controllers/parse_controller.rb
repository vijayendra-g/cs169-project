#Goal of parser: Given an array of article numbers, return an iterator of article information gained from XML
#Number of articles is temporarily capped at 100
require 'nokogiri'
require 'open-uri'

class ArticleContainer

  #authors is a list of strings
  attr_accessor :authors, :title, :abstract, :date, :affiliation

  def initialize
    @authors = []
  end

end

class ArticleXMLParser
  include Enumerable



  def initialize(articleArray)
    @arr = articleArray.clone
  end



  def each
    @arr.each do |n|
      yield parse(n)
    end
  end



  def parse(articleNum)
    #get xml from articleNum
    #parse, putting relevant information into data structure of some sort
    #return that data structure
    tagr = /<[^<>]*>/
    cont = ArticleContainer.new
    doc = Nokogiri::XML(open('http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&id=' + articleNum + '&retmode=xml'))
    #use doc.xpath for stuff
    doc.xpath("//Author").each do |a|
      asplit = a.split(tagr)
      cont.authors << asplit[2] + ' ' + asplit[6] #lastname space initials
    end
    cont.title = doc.xpath("//ArticleTitle")[0].split(tagr)[1]
    cont.abstract = doc.xpath("//AbstractText")[0].split(tagr)[1]
    cont.affiliation = doc.xpath("//Affiliation")[0].split(tagr)[1]
    dsplit = doc.xpath("//PubDate")[0].split(tagr)
    cont.date = dsplit[2] + ' ' + dsplit[4] + ' ' + dsplit[6]
    return cont
  end

    

end



def parse_search
  #view should iterate through this?
  @results = ArticleXMLParser.new(@articleIDList) #names should be changed
end
