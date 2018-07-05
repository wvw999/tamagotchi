require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("creates a new Tamagotchi") do
      my_pet = Tamagotchi.new({:name => "lil dragon"})
      expect(my_pet.name).to(eq('lil dragon'))
      expect(my_pet.food_level).to(eq(10))
      expect(my_pet.sleep_level).to(eq(10))
      expect(my_pet.activity_level).to(eq(10))
    end
  end
  describe("#is_alive") do
   it("is alive if the food level is above 0") do
     my_pet = Tamagotchi.new({:name => "lil dragon"})
     expect(my_pet.is_alive()).to(eq(true))
   end
 end
   it("is dead if the food level is 0") do
        my_pet = Tamagotchi.new({:name => "lil dragon"})
        my_pet.set_food_level(0)
        #make a method that will change the food level of your tamagotchi.
        expect(my_pet.is_alive()).to(eq(false))
    end
end
