require File.expand_path('CreatTemplate', File.dirname(__FILE__))
require File.expand_path('DbConnector', File.dirname(__FILE__))
class Controller
  def initialize(params,path)
    @params=params
    @path=path
    @view=CreatTemplate.new
    DbConnector.new
    # @view=ct.clone
  end

  protected
  def getId
    return @params[:id]
  end

  def gggg
    "guava"
  end

  def getView
    return @view
  end

end