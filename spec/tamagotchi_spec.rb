require('rspec')
require('favorite_things')

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
end
