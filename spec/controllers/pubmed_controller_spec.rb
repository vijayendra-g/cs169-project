require 'spec_helper'

describe PubmedController do   
begin
  describe 'search a term in pubmed' do
    it 'should call the controller method that performs pubMed search' do
	post :search, :search_term => 'bullshit'
	#PubmedController.should_receive(:search).with({:search_term => 'bullshit'})
    end
    describe 'after search' do
	before :each do
          @fake_results = 'a list of articles'
	  PubmedController.stub(:search).and_return(@fake_results)
          post :search, {:search_term => 'bullshit'}
	end
	it 'should select the search results template for rendering' do
          response.should render_template('results')
        end
        it 'should make the pubMed search results available to that template'do
	  #assign(:results).should == @fake_results
	end
    end
  end
end
end
