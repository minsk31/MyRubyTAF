class NavigationSection
  include PageObject
  @@BaseUrl = "https://www.onliner.by/"


  link(:mobiles_link, xpath: "//a[text()='Мобильные телефоны']")
  checkbox(:brand_checkbox, xpath: "//li//input[@class='i-checkbox__real' and @value='htc']")
  checkboxes(:brand_checkboxes, xpath: '//li//input[@class="i-checkbox__real"]')

  def navigate_to_page
    @browser.goto(@@BaseUrl)
  end


  def open_mobile_catalog(brand)
    mobiles_link
    #check_brand_checkbox


     x = brand_checkboxes_elements.find do  |x|
     x.value == brand
    end

  x.click



  end


  end