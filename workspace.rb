require "sinatra"
require "uri"

# set :bind, "0.0.0.0"

#Lee .txts
def page_content(title)
  File.read("pages/#{title}.txt")
rescue Errno::ENOENT
  return nil
end
#Crea .txts
def save_content(title, content)
  File.open("pages/#{title}.txt", "w") do |file|
    file.print(content)
  end
end
#Destruye txts
def delete_content(title, content)
  File.delete("pages/#{title}.txt")
end
#Página de Welcome
get "/" do
  erb :welcome
end
#Página nueva
get "/new" do
   erb :new
end
#Página universal, al final!!
get "/:title" do
  @title = params[:title]
  @content = page_content(@title)
  erb :show
end

#Editar!
get "/:title/edit" do
@title = params[:title]
@content = page_content(@title)
erb :edit
end

#Receptor de FORMS
post "/create" do
save_content(params["title"], params["content"]) 
redirect URI.escape("/#{params["title"]}")
end

#Sobreescribir lo que haya en la página
put "/:title" do
save_content(params["title"], params["content"]) 
redirect URI.escape("/#{params["title"]}")
end

#Borrar lo que haya en la página
delete "/:title" do
delete_content(params["title"], params["content"]) 
redirect URI.escape("/")
end





