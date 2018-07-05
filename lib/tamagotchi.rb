class Tamagotchi
  attr_reader(:name)
  attr_accessor(:food_level, :sleep_level, :activity_level)
  #making methods for food_level, sleep_level, etc

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
  end

  def is_alive()
    if food_level >0 && sleep_level >0 && activity_level > 0
      true
    else
      false
    end
  end
end
