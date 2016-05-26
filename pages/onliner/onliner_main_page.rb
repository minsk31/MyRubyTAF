require_relative '../../pages/onliner/navigation_section'
require_relative '../../pages/onliner/i_frame_search_section'
class OnlinerMainPage
  include PageObject

  page_section(:navigation, NavigationSection, id: "fast-search")
  page_section(:search_iframe,IFrameSearchSection, class: "modal-iframe" )

end