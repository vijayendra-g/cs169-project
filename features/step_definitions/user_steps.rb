And /^Google authorizes me$/ do
  visit '/auth/google_oauth2/'
end

And /^Google doesn't authorize me$/ do
end


When /^I "(.*?)" the article "(.*?)"$/ do |arg1, arg2|
  #link = page.find('a', :text => arg2)
  #put link
  #if arg1 == 'save'
   #   article.click_link('Save Article')
  #else if arg1 == 'unsave'
  #    article.click_link('Unsave Article')
  #else if arg1 == 'delete'
  #    article.click_link('Delete Article')
  #end
  pending 
end

Then /^the text of the button of "(.*?)" should be "(.*?)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end


