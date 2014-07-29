
# require File.expand_path('../core/CreatTemplate', File.dirname(__FILE__))
class Wood < Controller
  def say
    # params=getId
    # puts @params[:id]
    # @params[:id]+ "guava1"
    @view.showHtml("pageAdd",@path,nil)
    # gggg
    # toString("pageAdd")
  end
end
