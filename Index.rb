require 'sinatra'

get '/do/:c/:m' do
  #http://localhost:4567/do/Wood/say?id=9
  #"Hello #{params[:c]}--#{params[:m]}!"
  load "controllers/"+params[:c]+".rb"
  control=Object.const_get(params[:c])

  o=control.new(params)
  o.method(params[:m]).call
  # params[:id]
  # params.to_s
end