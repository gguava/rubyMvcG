require "erb"
class CreatTemplate
  def creatCodeFile(templatefileName, creatFileName, path="../template/", binding)
    file = "../views/"+creatFileName
    f = File.new(file, "w")
    File.open( path+templatefileName ) { |fh|
      rhtml = ERB.new( fh.read )
      # f.print ERB.result( binding )
      f.print rhtml.result
      puts "finished"
    }
  end
  def showHtml(templatefileName, path, binding)


    File.open( path+"/views/"+templatefileName+".erb" ) { |fh|
      rhtml = ERB.new( fh.read )
      # f.print ERB.result( binding )
      rhtml.result
    }
  end
end