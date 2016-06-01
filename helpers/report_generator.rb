require_relative '../helpers/screen_shot_helper'
require 'mini_magick'




class ReportGenerator
  #TODO ref to screenshothelper
  ThumbPath = 'thumbs'

  EntryTemplate = "<h1>{imageName}</h1><a href='{imagePath}' data-lightbox='report'><img src='{thumbPath}'/></a><br/>"
  ReportTemplate = "<!DOCTYPE html><html lang='en-us'><head><meta charset='utf-8'>"  +
      "<link href='https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.1/css/lightbox.min.css' rel='stylesheet'></head><body>"  +
      "<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js'></script>"  +
      "<script src='https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.1/js/lightbox.min.js'></script>"  +
      "{entries}"  +
      "</body></html>"


  def self.generate_preview_report
    entry_templates = ""
    files =  Dir["./#{ThumbPath}/*"]

    files.each do |filename|
      image = MiniMagick::Image.open(filename)
      image.path #=> "/var/folders/k7/6zx6dx6x7ys3rv3srh0nyfj00000gn/T/magick20140921-75881-1yho3zc.jpg"
      image.resize "800x640"
      image.format "png"
      image.write filename
     # outfile = FastImage.resize(filename, 50, 50)
    end


 files.each do |file_name|
   next if File.directory? entry_templates += EntryTemplate.gsub('{imageName}', File.basename( file_name, ".png") ).gsub('{imagePath}',  file_name).gsub('{thumbPath}',  file_name)
 end
    template = ReportTemplate.gsub("{entries}", entry_templates)


    File.open('./reports/report_preview.html', 'w') { |file| file.write(template) }
  end
end


