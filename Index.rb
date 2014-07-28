require 'sinatra'
require_relative File.dirname(__FILE__) +'/core/CreatTemplate.rb'
get '/do/:c/:m' do
  #"Hello #{params[:c]}--#{params[:m]}!"

  load "controllers/"+params[:c]+".rb"
  control=Object.const_get(params[:c])

  file_path = File.dirname(__FILE__)
  obj=control.new(params,file_path)
  obj.method(params[:m]).call
  # params[:id]
  # params.to_s
end