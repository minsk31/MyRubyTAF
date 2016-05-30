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


When(/^I search for "([^"]*)" item use quick search$/) do |keyword|
  on_page OnlinerMainPage do |page|
    page.search_iframe.search_for(keyword)
  end
end

And(/^Take a look for "([^"]*)" details$/) do |link_text|
  on_page OnlinerMainPage do |page|
    page.search_iframe.open_detail_link(link_text)
  end
end

Then(/^"([^"]*)" details are opened$/) do |item_title|
  on_page OnlinerMainPage do |page|
    result =  page.isItemDetailsPresented(item_title)
    (result.should == true)
  end
end