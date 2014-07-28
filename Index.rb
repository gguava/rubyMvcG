require 'sinatra'
load 'core/Controller.rb'
get '/do/:c/:m' do
  #"Hello #{params[:c]}--#{params[:m]}!"

  load "controllers/"+params[:c]+".rb"
  control=Object.const_get(params[:c])

  obj=control.new(params)
  obj.method(params[:m]).call
  # params[:id]
  # params.to_s
end