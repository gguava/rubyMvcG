require File.expand_path('CreatTemplate', File.dirname(__FILE__))
class Controller
  def initialize(params,path)
    @params=params
    @path=path
    @view=CreatTemplate.new
    # @view=ct.clone
  end

  protected
  def getId
    return @params[:id]
  end

  def gggg
    "guava"
  end


end