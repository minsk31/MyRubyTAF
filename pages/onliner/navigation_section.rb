class NavigationSection
  include PageObject
  @@BaseUrl = "https://www.onliner.by/"

  @@search_input = "fast-search__input"


  text_field(:search, class: @@search_input)
  link(:mobiles_link, xpath: "//a[text()='Мобильные телефоны']")
  checkbox(:brand_checkbox, xpath: "//li//input[@class='i-checkbox__real' and @value='htc']")
  checkboxes(:brand_checkboxes, xpath: '//li//input[@class="i-checkbox__real"]')

  def navigate_to_page
    @browser.goto(@@BaseUrl)
  end

  def search_for(keyword)
    self.search = keyword

  end

  def open_mobile_catalog(brand)
    mobiles_link
<<<<<<< HEAD
sleep(7)
    #check_brand_checkbox
=======
sleep(5000)
    check_brand_checkbox
>>>>>>> origin/master
    # t =@browser.checkboxes(xpath: '//li//input[@class="i-checkbox__real"]')
   #"#{ }"#t = brand_checkbox
   x = brand_checkboxes_elements.first do  |x|
     x.value == brand
   "#{ }"#  puts(x.value)
   end
   "#{ }"#p x
   x.click



  end


  end