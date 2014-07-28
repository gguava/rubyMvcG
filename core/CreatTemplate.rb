require "erb"
class CreatTemplate
  def initialize(templatefileName, creatFileName, path="../template/", binding)
    file = "../public/"+creatFileName
    f = File.new(file, "w")
    File.open( path+templatefileName ) { |fh|
      rhtml = ERB.new( fh.read )
      # f.print ERB.result( binding )
      f.print rhtml.result
      puts "finished"
    }
  end
end

s=CreatTemplate.new("index.html","pageAdd.html", path="../template/",nil)

class Product
  def initialize( code, name, desc, cost )
    @code = code
    @name = name
    @desc = desc
    @cost = cost

    @features = [ ]
  end

  def add_feature( feature )
    @features << feature
  end

  # Support templating of member data.
  def get_binding
    binding
  end

  # ...
end