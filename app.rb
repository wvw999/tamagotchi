require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')
require('pry')


get('/') do
  @my_pet = Tamagotchi.new({:name => "lil dragon"})
  erb(:home)
end

post('/main')


# post('/proceed')

# post('/') do
#   name = params["name"]
#   item = Item.new(name)
#   item.save()
#   erb(:)
# end
