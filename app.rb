require 'sinatra'

# get '/' do
#   erb :index
# end
#
#
# get '/dog/:name/:apellido' do
#   p params
#   @name = params["name"]
#   @apellido = params["apellido"]
#   erb :dog
# end

# todos = []
#
# get '/todos/:todo' do
#   todos.push(params["todo"])
#   @todos = todos
#   erb :todos
# end

#rutas GET para traer información
#rutas POST para envíar información

todos = []

get '/todos' do
  @todos = todos
  erb :todos
end

post '/todos/:todo' do
  todos.push(params["todo"])
  redirect '/todos'
end





# ejercicio*

#crear una ruta (/) que es la página principal (landing page)
#una segunda ruta /cat/:name, cuya vista diga, "Mi nombre es:__"
#una tercera ruta /dog/:name, cuya vista diga, "Mi nombre es:__"
#una cuarta ruta /pets, cuya vista me muestre una lista de mascotas
#que tenga las dos rutas vistas (get/postman)
