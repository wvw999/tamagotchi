class Tamagotchi
  attr_reader(:name)
  attr_accessor(:food_level, :sleep_level, :activity_level)
  #making methods for food_level, sleep_level, etc

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
    @time_born = Time.now
  end

  def is_alive()
    if @food_level > 0 && @sleep_level > 0 && @activity_level > 0
      true
    else
      false
    end
  end

  def set_food_level(new_food_level)
      @food_level = new_food_level
      #local variable is new_food_level
  end

  def time_passes()
    current_time = Time.now
    attribute_decrement = current_time - @time_born
    # each attrib - attribute_decrement/15
    @food_level -= (attribute_decrement/15).round
    @sleep_level -= (attribute_decrement/15).round
    @activity_level -= (attribute_decrement/15).round
    @time_born = current_time
  end
end
