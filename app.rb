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
  Tamagotchi.set_food(1)
  Tamagotchi.set_sleep(1)
  Tamagotchi.set_activity(1)
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
    @my_pet.do_verb("sleep_add")
  elsif pet_food
    @my_pet.do_verb("food_add")
  elsif pet_activity
    @my_pet.do_verb("activity_add")
  end
  @my_pet.time_passes
  # if @my_pet.is_alive == false
  #   erb(:dead)
  # end
  params.clear
  erb(:main)
end
