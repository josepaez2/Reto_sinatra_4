require "sinatra"
#Lee .txts
def page_content(titulo)
  File.read("pages/#{titulo}.txt")
rescue Errno::ENOENT
  return nil
end
#Crea .txts
def save_content(titulo, contenido)
  File.open("pages/#{titulo}.txt", "w") do |file|
    file.print(contenido)
  end
end
#Destruye txts
def delete_content(titulo, contenido)
  File.delete("pages/#{titulo}.txt")
end
#Página de Welcome
get "/" do
   erb :bienvenido
end

#Receptor de FORMS
post "/crear" do
save_content(params["titulo"], params["contenido"]) 
redirect URI.escape("/#{params["titulo"]}")
end

#Página universal, al final!!
get "/:titulo" do
  @titulo = params[:titulo]
  @contenido = page_content(@titulo)
  erb :mostrar
end


# # LINK PODRÍA SER ÜTIL
# http://www.sinatrarb.com/faq.html#path_info
