When(/^I send call to VholsApi$/) do
  on_page ApiPage do |page|
    page.call_custom_api_request
  end
end

  Then(/^Response should be valid$/) do
    on_page ApiPage do |page|
      page.schema_validation
    end
  end

  Then(/^carLocationId,cityName should be valid$/) do
    on_page ApiPage do |page|
      page.check_using_jsonpath.should == true
    end
  end