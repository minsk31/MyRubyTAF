require_relative '../../pages/onliner/navigation_section'
require_relative '../../pages/onliner/i_frame_search_section'
class OnlinerMainPage
  include PageObject

  page_section(:navigation, NavigationSection, id: "fast-search")
  page_section(:search_iframe,IFrameSearchSection, class: "modal-iframe" )

  h2(:item_title, css: "h2.catalog-masthead__title")

  def isItemDetailsPresented(item_text)

    @browser.wait_until{ p item_title? }
    (item_title == item_text)
  end

end