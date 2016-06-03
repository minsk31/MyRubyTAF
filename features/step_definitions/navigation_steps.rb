When(/^I click catalog link$/) do
 on_page OnlinerMainPage do |page|
  page.main_nav_panel_element.catalog
 end
end

Then(/^I should be on catalog page$/) do

  on_page OnlinerMainPage do |page|
    page.catalog_nav.include?("Электроника"&&"Компьютеры и сети").should == true
  end
end

When(/^I click news link$/) do
  on_page OnlinerMainPage do |page|
    page.main_nav_panel_element.news
  end
end

Then(/^I should be on news page$/) do
  links = Array.new
  on_page OnlinerMainPage do |page|

     page.news_nav_elements.each do |item|
      links.push(item.text)
     end
   links.include?("ЛЮДИ"&&"МНЕНИЯ"&&"ЯБЛОКО").should == true
  end
end