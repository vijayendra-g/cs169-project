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



    def initialize(articleArray, search)
      @terms = search.to_s.downcase.split(/\s/) #words in search term
      @arr = articleArray.clone #article numbers
      @termCounts = {} #article number -> number of search terms in title
      @termCounts.default = [] #helper - be careful of how this is used later!
      @resultLimit = 300 #change as preferred
    end



    def each
      delayArticle = []
      parse(@arr).each do |p|
        toReturn = true
        @terms.each do |t|
          if not p.title.include?(t)
            toReturn = false;
            break
          end
        end
        if toReturn
          yield p
        else
          delayArticle << p
        end
      end
      delayArticle.each {|p| yield p}
    end



    def count
      @arr.count
    end

    #parse @resultLimit articles, return array of container objects
    def parse(articleNumArray)
      #get xml from articleNumArray
      #parse, putting relevant information into data structure of some sort
      #return an array of those data structure
      
      ret = []

      tagr = /<[^<>]*>/
      url = 'http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&id='
      articleNumArray.each_with_index do |a,i|
        break if i==@resultLimit
        url += a.to_s + ','
      end
      doc = Nokogiri::XML(open(url + '&retmode=xml'))
      (0..@resultLimit-1).each do |offset|
        break if offset == articleNumArray.length
        cont = ArticleContainer.new
        oneXML = Nokogiri::XML(doc.xpath('//PubmedArticle')[offset].to_s)

        oneXML.xpath('//Author').each do |a|
          if(a != nil && a != "")
          asplit = a.to_s.split(tagr)
          end
          if(asplit[2] != nil && asplit[6] != nil)
            cont.authors << asplit[2] + ' ' + asplit[6] #lastname space initials
          end
        end

        cont.title = oneXML.xpath('//ArticleTitle')[0].to_s.split(tagr)[1]
        cont.abstract = oneXML.xpath('//AbstractText')[0].to_s.split(tagr)[1] #doesn't capture multiple abstract labels
        #UNUSED cont.affiliation = oneXML.xpath('//Affiliation')[offset].to_s.split(tagr)[1]
        cont.id = articleNumArray[offset]
        dsplit = oneXML.xpath('//PubDate')[0].to_s.split(tagr)
        cont.date = dsplit[2].to_s + ' ' + dsplit[4].to_s + ' ' + dsplit[6].to_s
        ret << cont
      end
      return ret
    end

  end


end
