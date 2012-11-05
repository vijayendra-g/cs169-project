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
    end



"""
    def each #original working without sorting
      @arr.each do |n|
        yield parse(n)
      end
    end
"""

"""
    def titleTermCount(articleNum)
      #get xml for title only, check number of search terms in title
      result = 0
      tagr = /<[^<>]*>/
      doc = Nokogiri::XML(open('http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&id=' + articleNum.to_s + '&retmode=xml'))
      title = doc.xpath('//ArticleTitle')[0].to_s.split(tagr)[1].downcase.split(/\s/)
      @terms.each do |t|
        result += 1 if title.include? t
      end
      return result
    end
"""

"""
    #sorting by number of search terms contained in title
    def each
      curr = @terms.count
      @arr.each do |n|
        count = titleTermCount(n)
        if count == curr #title contains all search terms
          yield parse(n)
        else
          @termCounts[count] = @termCounts[count].push(n)
        end
      end
      curr -= 1
      #iterate through lists of articles without all terms in title
      while curr >= 0
        @termCounts[curr].each do |n|
          yield parse(n)
        end
        curr -= 1
      end
    end
"""

    def each
      @arr.each do |n|
        p = parse(n)
        #yield p if p.title.include?('sickle')

        @terms.each do |t|
          if p.title.include?(t)
            yield p
            break
          end
        end

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
        if(a != nil && a != "")
          asplit = a.to_s.split(tagr)
        end
        if(asplit[2] != nil && asplit[6] != nil)
          cont.authors << asplit[2] + ' ' + asplit[6] #lastname space initials
        end
      end
      cont.title = doc.xpath("//ArticleTitle")[0].to_s.split(tagr)[1]
      cont.abstract = doc.xpath("//AbstractText")[0].to_s.split(tagr)[1]
      cont.affiliation = doc.xpath("//Affiliation")[0].to_s.split(tagr)[1]
      cont.id = articleNum
      dsplit = doc.xpath("//PubDate")[0].to_s.split(tagr)
      cont.date = dsplit[2].to_s + ' ' + dsplit[4].to_s + ' ' + dsplit[6].to_s
      return cont
    end


    def retrieve100(articleArray)
      
      doc = Nokogiri::XML(open('http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&id=' + articleNum.to_s + '&retmode=xml'))
    end

  end


end
