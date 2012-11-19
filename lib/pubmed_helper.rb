module PubmedHelper


  #Goal of parser: Given an array of article numbers, return an iterator of article information gained from XML
  #Number of articles is temporarily capped at 100
  require 'nokogiri'
  require 'open-uri'

  class ArticleContainer

    #authors is a list of strings
    attr_accessor :authors, :title, :abstract, :date, :journal, :affiliation, :id, :failHash, :rating

    def initialize
      @authors = []
      @failHash = {}
      @rating = 0
    end

  end

  class ArticleXMLParser
    include Enumerable



    def initialize(articleArray, search)
      @terms = search.to_s.downcase.split(/\s/) #words in search term
      @arr = articleArray.clone #article numbers
      @resultLimit = 300 #change as preferred
    end



    def each
      ##### get article containers
      articles = parse(@arr)
      ##### account for number of search terms in title
      articles.each do |p|
        count = 0
        @terms.each do |t|
          if p.title.include?(t)
            count += 1
          end
        end
        p.rating += (5 * count / @terms.length)
      end
      ##### sort in descending rating
      articles.sort_by! {|p| p.rating}
      articles.reverse!
      ##### yield articles that don't fail
      articles.each do |p|
        if !p.failHash.has_value?(true)
          yield p
        end
      end
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
      return ret if articleNumArray.length == 0
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
        cont.journal = oneXML.xpath('//Title')[0].to_s.split(tagr)[1]
        #UNUSED cont.affiliation = oneXML.xpath('//Affiliation')[offset].to_s.split(tagr)[1]
        cont.id = articleNumArray[offset]
        dsplit = oneXML.xpath('//PubDate')[0].to_s.split(tagr)
        cont.date = dsplit[2].to_s + ' ' + dsplit[4].to_s + ' ' + dsplit[6].to_s
        pubYear = dsplit[2].to_s.to_i
        cont.failHash[:noAbstract] = cont.abstract == nil
        cont.failHash[:notEnglish] = oneXML.xpath('//Language')[0].to_s.split(tagr)[1] != 'eng'
        cont.rating += 5 if oneXML.xpath('//MeshHeadingList')[0].to_s.include?('Humans')
        cont.rating += case pubYear
          when Time.now.year-5..Time.now.year then 5
          when Time.now.year-10..Time.now.year-6 then 3
          when Time.now.year-20..Time.now.year-11 then 1
          else 0
        end
        journalAbbrev = oneXML.xpath('//ISOAbbreviation')[0].to_s.split(tagr)[1]
        cont.rating += Journal.impact(journalAbbrev)
        ret << cont
      end
      return ret
    end

  end


end
