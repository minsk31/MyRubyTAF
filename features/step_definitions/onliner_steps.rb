Given(/^I am on Onliner page$/) do
  on_page OnlinerMainPage do |page|
    page.navigation.navigate_to_page
  end
end

When(/^I search for "([^"]*)" mobile phone$/) do |keywords|
  on_page OnlinerMainPage do |page|
    page.navigation.search_for(keywords)
  end
  end



When(/^I search for "([^"]*)" mobile phone in catalogue$/) do |arg|
  on_page OnlinerMainPage do |page|
    page.navigation.open_mobile_catalog(arg)
  end
end

Then(/^"([^"]*)" presents on catalog  with price less then "([^"]*)"$/) do |result, price|
  on_page ResultPage do |page|
    result = page.item_is_presented(price)
    result.should == true
  end
end