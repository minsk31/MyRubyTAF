class IFrameSearchSection
  include PageObject
  #in_iframe(:class => 'modal-iframe') do |iframe|
   # text_field(:my, :class => 'product__description', :frame => iframe)
  #end

  div(:mydiv, :class => 'product__details')
  div(:myspan,  class:"product__title")
def result
f = self.myspan

  texts = @browser.divs(:class => "product__price").map do |span|
    span.text


  end
  frame = @browser.frame(:index => 1)
  t= "test"
  @browser.text_field(class: "fast-search__input").set("Sony")
 # iframe = driver.find_element(:tag_name => "iframe")
 # driver.switch_to.frame(iframe)
t= "test"
  end
end