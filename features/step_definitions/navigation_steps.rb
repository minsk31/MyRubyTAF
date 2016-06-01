When(/^I click catalog link$/) do
 on_page OnlinerMainPage do |page|
  page.main_nav_panel_element.catalog
 end
end

Then(/^I should be on catalog page$/) do

  on_page OnlinerMainPage do |page|
    page.catalog_nav.include?("Электроника").should == true
  end
end