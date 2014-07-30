require File.expand_path('../models/PageModel', File.dirname(__FILE__))
require File.expand_path('../core/Controller', File.dirname(__FILE__))
class Page < Controller
  def add
    # gggg
    p=PageModel.new
    p.title="guava"
    p.gcontents="<p>hello miniMvc</p>"
    p.save
    # puts "saved"
    @view.showHtml("pageAdd",@path,nil)

  end

  def getbyid
    # http://192.168.1.111:4567/do/Page/getbyid?id=1
    page=PageModel.find(@params[:id])
    puts page.title
  end
end

