

class ScreenShotHelper
  FolderPreview = 'reports/thumbs'

  def self.save_to_preview(browser, screenshot_name)
    screenshot = "./#{FolderPreview}/#{screenshot_name.gsub!(" ","_")}.png"
    Dir::mkdir(FolderPreview) if not File.directory?(FolderPreview)
    FileUtils.rm_rf(Dir.glob("./#{FolderPreview}/*"))

    browser.driver.save_screenshot(screenshot)

  end

end