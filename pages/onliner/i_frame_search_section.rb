class IFrameSearchSection
  include PageObject

  text_field(:search, xpath: "//*[@class='fast-search__input']")

  in_iframe(:index => 1) do |iframe|
    links(:product_links, class: "product__title-link",:frame => iframe)
    spans(:prices_spans, xpath:"//div[@class='schema-product__price']//span", :frame => iframe)
  end



  def search_for(keyword)
    self.search = keyword

  end

  def open_detail_link(link_text)

    in_iframe(xpath: '//*[@id="vk_groups"]//iframe') do |iframe|
      elem = link_element(id: 'join_community', frame: iframe)
      elem.click
    end

  end
  def result
    f = self.myspan
    texts = @browser.divs(:class => "product__price").map do |span|
      span.text
    end
  end
end
