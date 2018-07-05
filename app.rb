require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')
require('pry')


post('/') do
  @my_pet = Tamagotchi.new({:name => "lil dragon"})
  erb(:input)
end

# post('/') do
#   name = params["name"]
#   item = Item.new(name)
#   item.save()
#   erb(:)
# end
