class MainNavigation < PageObject::Elements::Div
  include PageObject

  CatalogLinkText = 'Каталог'
  NewsLinkText = 'Новости'
  spans(:span,class:'b-main-navigation__text')

  def catalog
    s =span_elements
   element = span_elements.find do |el|
      el.text == CatalogLinkText
    end
  element.click
  end

  def news
    self.class.spans(:span,class:'b-main-navigation__text')

    el = span_elements.find do |element|
      element.text == NewsLinkText
    end
    el.click
  end
end
PageObject.register_widget :main_nav, MainNavigation, 'nav'