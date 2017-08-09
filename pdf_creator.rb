require 'sinatra/base'
require 'bundler'
Bundler.require(:default, :development)

get '/:file' do
  content_type 'application/pdf'
  WickedPdf.new.pdf_from_string(params[:file])
end

get '/healthcheck' do
  'WORKING'
end

post '/generate' do
  content_type 'application/pdf'
  WickedPdf.new.pdf_from_string(params[:file])
end
