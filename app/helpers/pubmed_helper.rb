module PubmedHelper


  #Goal of parser: Given an array of article numbers, return an iterator of article information gained from XML
  #Number of articles is temporarily capped at 100
  require 'nokogiri'
  require 'open-uri'

  class ArticleContainer

    #authors is a list of strings
    attr_accessor :authors, :title, :abstract, :date, :affiliation, :id

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

    def count
      @arr.count
    end

    def parse(articleNum)
      #get xml from articleNum
      #parse, putting relevant information into data structure of some sort
      #return that data structure
      tagr = /<[^<>]*>/
      cont = ArticleContainer.new
      doc = Nokogiri::XML(open('http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&id=' + articleNum.to_s + '&retmode=xml'))
      #use doc.xpath for stuff
      doc.xpath("//Author").each do |a|
        asplit = a.to_s.split(tagr)
        cont.authors << asplit[2] + ' ' + asplit[6] #lastname space initials
      end
      cont.title = doc.xpath("//ArticleTitle")[0].to_s.split(tagr)[1]
      cont.abstract = doc.xpath("//AbstractText")[0].to_s.split(tagr)[1]
      cont.affiliation = doc.xpath("//Affiliation")[0].to_s.split(tagr)[1]
      cont.id = articleNum
      dsplit = doc.xpath("//PubDate")[0].to_s.split(tagr)
      cont.date = dsplit[2].to_s + ' ' + dsplit[4].to_s + ' ' + dsplit[6].to_s
      return cont
    end

    

  end


end
