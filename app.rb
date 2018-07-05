require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')
require('pry')


get('/') do
  erb(:home)
end

post('/home') do
  @my_pet = Tamagotchi.new()
  pet_name = params.fetch('name')
  Tamagotchi.name(pet_name)
  erb(:main)
end

post('/main') do
  @my_pet = Tamagotchi.new()
  pet_sleep = params["sleep-btn"]
  pet_food = params["food-btn"]
  pet_activity = params["activity-btn"]
  if pet_sleep
    # @sleep_level = @my_pet.do_verb(@my_pet.sleep_level)
    @my_pet.do_verb("sleep_add")
     ##@sleep level was nil
  elsif pet_food
    @my_pet.do_verb("food_add")
  elsif pet_activity
    @my_pet.do_verb("activity_add")
  end
  @my_pet.time_passes
  @my_pet.is_alive
  params.clear
  erb(:main)
end
# post('/proceed')

# post('/') do
#   name = params["name"]
#   item = Item.new(name)
#   item.save()
#   erb(:)
# end
