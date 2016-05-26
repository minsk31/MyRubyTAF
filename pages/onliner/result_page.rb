class ResultPage
  include PageObject
  spans(:prices_spans, xpath:"//div[@class='schema-product__price']//span")

  def item_is_presented(price)
    prices = Array.new
    prices_spans_elements.each do |item|
     prices.push(item.text.gsub!(/[^\d]/, ''))
    end

    prices.select{ |x| x.to_i <  price.to_i }.any?
  end

end