#for institution.feature
lists = {} #for reputable institutions, in actual implementation, this should either be built in to app or dependent on user

Then /^the current page should be "(\d)"$/ do |number|
  page.should have_content(number)
end

#for institution.feature
Given /^the following are in "([^"]*)": (.*)$/ do |listname, items|
  lists[listname] = items.split(',')
end

#for institution.feature
Then /^all results should have field "([^"]*)" in "([^"]*)"$/ do |field, listname|
  results.each do |r| #assume we get 'results' from controller as an Enumerable of ActiveRecords
    assert lists[listname].contains(r.institution)
  end
end

#for search_term_in_title_of_all_results.feature
Then /^all results should have "([^"]*)" in the title$/ do |term|
  results.each do |r|
    assert r.title.include?(term)
  end
end

#for search_term_in_title_of_all_results.feature
Then /^there should be no results$/ do
  assert !results.any?
end

#for search_term_in_title_of_all_results.feature
Then /^there should be "(\d)" results$/ do |num|
  assert results.count == num
end


#for pagination feature
Then /^the current page number should be (\d+)$/ do |num|
  assert_equal page.find(".page.current").text num.to_s
end

