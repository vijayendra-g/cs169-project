require 'spec_helper'

describe PubmedController do

  describe 'search a term in pubmed' do
    before :each do
	@fake_results = "a list of articles written by pedro"
    end
    it 'should call the model method that performs pubMed search' 
	Pubmed.should_receive(:find_in_pubmed).with( {:author => 'pedro'}).and_return(@fake_results)
	post :search_pubmed, {:search_terms => {:author => 'pedro'}}
    end
    describe 'after search' do
	before :each do
	  Pubmed.stub(:find_in_pubmed).and_return(@fake_results)
          post :search_pubmed, {:search_terms => {:author => 'pedro'}}
	end
	it 'should select the search results template for rendering' do	
          response.should render_template('search_pubmed')
        end
        it 'should make the pubMed search results available to that template'
	  assign(:articles).should == @fake_results
	end
    end

  end

