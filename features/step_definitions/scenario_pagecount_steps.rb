Given /^I plan to make a search that spans more than two pages$/ do
  step %Q{I plan to search for headache}
end

Given /^I plan to make a search that has no results$/ do
  FakeWeb.register_uri(:any, %r[http://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch*], 
    :body => %Q{
<eSearchResult>
<Count>0</Count><RetMax>0</RetMax><RetStart>0</RetStart>
<IdList>
</IdList>
<TranslationSet/><QueryTranslation>(isudhgfiushdfksjdhfksjdhfksdhf[All Fields])</QueryTranslation><ErrorList><PhraseNotFound>isudhgfiushdfksjdhfksjdhfksdhf</PhraseNotFound></ErrorList><WarningList><OutputMessage>No items found.</OutputMessage></WarningList>

</eSearchResult>

    }  )
end

