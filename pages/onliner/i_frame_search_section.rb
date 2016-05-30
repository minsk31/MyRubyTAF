class IFrameSearchSection
  include PageObject

  text_field(:search, xpath: "//*[@class='fast-search__input']")

  in_iframe(:index => 1) do |iframe|
    links(:product_links, class: "product__title-link",:frame => iframe)
    spans(:prices_spans, xpath:"//div[@class='schema-product__price']//span", :frame => iframe)
  end

  in_iframe(xpath: '//*[@class="modal-iframe"]') do |iframe|
    links(:the_links,class: 'product__title-link', frame: iframe)
  end



  def search_for(keyword)
    self.search = keyword

  end

  def open_detail_link(link_text)


      elem = the_links_elements.find {|item| item = link_text}
      elem.click
    end


  def result
    f = self.myspan
    texts = @browser.divs(:class => "product__price").map do |span|
      span.text
    end
  end


end
