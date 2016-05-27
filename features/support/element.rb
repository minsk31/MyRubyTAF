module Selenium
  module WebDriver
    class Element

      def switch_to
        WebDriver::TargetLocator.new(@bridge)
      end

    end
  end
end
