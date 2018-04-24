require "sinatra"

get "/" do
  erb :index
end
get "/upload" do
  erb :upload
end

get "/form" do
  erb :form
end

get "/:title" do
  @title = params[:title]
  @nouns = params[:noun]
  @verbs = params[:verb]
  @adjs = params[:adj]
  erb :form
end
