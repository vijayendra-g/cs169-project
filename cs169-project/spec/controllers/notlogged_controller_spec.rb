require 'spec_helper'

describe NotloggedController do

  describe "GET 'default'" do
    it "returns http success" do
      get 'default'
      response.should be_success
    end
  end

end
