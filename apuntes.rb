<h1>Hola</h1>


imprimir 
<%= %>
evaluar una expresion
<% %>

# LINK DEMASIADO ÜTIL
 http://www.sinatrarb.com/faq.html#path_info

https://www.google.com.co/search ? q=gatos&rlz=1C5CHFA_enCO748CO748&oq=gatos&aqs=chrome..69i57j0l5.2141j0j7&sourceid=chrome&ie=UTF-8
Esquema   host & puerto	 path	Querystring


get '/hello-world' do
  request.path_info   # => '/hello-world'
  request.fullpath    # => '/hello-world?foo=bar'
  request.url         # => 'http://example.com/hello-world?foo=bar'
end

# require "sinatra"

# get "/" do
# 	"Hola desde sinatra"
# 	@students = %w(jose, juan)
# 	erb :index
# end

# get "/dog_form" do
# 	erb :dog_form
# end

# get "/dogs" do
# 	@dogs = dogs
# 	erb :dogs
# end

# dogs =[{}]

# post "/create/dog" do
# name = params["name"]
# breed = params["breed"]
# dog << params
# redirect "/dogs"
# end



