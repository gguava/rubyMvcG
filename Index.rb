require 'sinatra'
configure do
  ip= IPSocket.getaddress(Socket.gethostname)
  if ip.to_s.include?("192")
    set :bind=>"192.168.1.111"
  else
    set :bind=>"112.124.60.115"
  end
end
require File.expand_path('core/Controller', File.dirname(__FILE__))
get '/do/:c/:m' do
  load "controllers/"+params[:c]+".rb"
  control=Object.const_get(params[:c])
  file_path = File.dirname(__FILE__)
  obj=control.new(params,file_path)
  obj.method(params[:m]).call
  # params[:id]
  # params.to_s
end