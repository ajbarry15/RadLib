require "sinatra"

get "/" do
  erb :index
end

get "/views/index" do
  erb :index
end

get "/upload" do
  erb :upload
end

post "/upload" do
  f = File.new(("uploads/" + params[:myfile][:filename]), "w")
  f.write(params[:myfile][:tempfile].read)
  f.close
  #   tempf = params[:myfile][:tempfile].read
  #   f.write(tempf)
  # end
  erb :uploadResults
  # params[:myfile][:tempfile].read
end

post "/uploadResults" do
  erb :index
end

get "/:title" do
  @title = params[:title]
  erb :form
end

post "/:title" do
  @title = params[:title]
  @nouns = params[:noun]
  @verbs = params[:verb]
  @adjs = params[:adj]
  erb :form2
end
