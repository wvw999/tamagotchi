class Tamagotchi
  # attr_reader(:name)
  # attr_accessor(:food_level, :sleep_level, :activity_level)
  #making methods for food_level, sleep_level, etc
  @@food_level = 10
  @@sleep_level = 10
  @@activity_level = 10
  @@time_born = Time.now
  @@last_food_time = Time.now
  @@last_sleep_time = Time.now
  @@last_activity_time = Time.now
  @@name = ""

  def self.food
    @@food_level
  end

  def self.sleepy
    @@sleep_level
  end

  def self.activity
    @@activity_level
  end

  def self.name(name)
    @@name = name
  end

  def initialize
  end

  def is_alive()
    if @@food_level > 0 && @@sleep_level > 0 && @@activity_level > 0
      true
    else
      false
    end
  end

  def do_verb(verb)
    if verb == "sleep_add"
      return @@sleep_level += 2
    elsif verb == "food_add"
      return @@food_level += 2
    elsif verb == "activity_add"
      return @@activity_level += 2
    end
  end

  def set_food_level(new_food_level)
      @@food_level = new_food_level
      #local variable is new_food_level
  end

  def time_passes()
    current_time = Time.now
    food_decrement = current_time - @@last_food_time
    sleep_decrement = current_time - @@last_sleep_time
    activity_decrement = current_time - @@last_activity_time
    # each attrib - attribute_decrement/15
    if food_decrement > 15
      @@food_level -= (food_decrement/15).round
      @@last_food_time = Time.now
    end
    if sleep_decrement > 15
      @@sleep_level -= (sleep_decrement/15).round
      @@last_sleep_time = Time.now
    end
    if activity_decrement > 15
    @@activity_level -= (activity_decrement/15).round
      @@last_activity_time = Time.now
    end
    @@time_born = current_time
  end
end
