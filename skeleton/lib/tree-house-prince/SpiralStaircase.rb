require_relative "Scene.rb"

class SpiralStaircase

  def initialize(floor_selection)
    @floor_selection = floor_selection
  end

  def floor_selector(current_floor)

    puts "You are current on floor number #{current_floor}"

    case @floor_selection
    when /0/, /ground/, /entrance/
      if current_floor == 0
        puts "You are already here."
        return 'ground_floor'
      elsif current_floor != 0
        puts "You descend the stairs to the ground floor."
        return 'ground_floor'
      else
        puts "Something has clearly gone wrong."
      end
    when /1/, /first/, /machine/
      if current_floor < 1
        puts "You ascend the stairs to the machine room."
        current_floor = 1
        return 'first_floor'
      elsif current_floor > 1
        puts "You descend the stairs to the machine room."
        current_floor = 1
        return 'first_floor'
      elsif current_floor == 1
      puts "You are already here.  Try another floor."
      return 'first_floor'
      else
        puts "There has clearly been a mistake somewhere."
      end
    when /2/, /second/, /kitchen/
        if current_floor < 2
          puts "You ascend the stairs to the kitchen."
          current_floor = 2
          puts "You are now on the floor number #{current_floor}"
          return 'second_floor'
        elsif current_floor > 2
          puts "You descend the stairs to the kitchen."
          current_floor = 2
          return 'second_floor'
        elsif current_floor == 2
          puts "You are already here.  Try another floor."
          return 'second_floor'
        else
          puts "There has clearly been a mistake somewhere."
        end
    when /3/, /third/, /library/
        if current_floor < 3
          puts "You ascend the stairs to the library."
          current_floor = 3
          return 'third_floor'
        elsif current_floor > 3
          puts "You descend the stairs to the library."
          current_floor = 3
          return 'third_floor'
        elsif current_floor == 3
          puts "You are already here.  Try another floor."
          return 'third_floor'
        else
          puts "There has clearly been a mistake somewhere."
        end
    when /4/, /fourth/, /bedroom/
      if current_floor < 4
        puts "You ascend the stairs to the bedroom."
        current_floor = 4
        return 'fourth_floor'
      elsif current_floor > 4
        puts "You descend the stairs to the bedroom."
        current_floor = 4
        return 'fourth_floor'
      elsif current_floor == 4
        puts "You are already here.  Try another floor."
        return 'fourth_floor'
      else
        puts "There has clearly been a mistake somewhere."
      end
    when /5/, /fifth/, /study/, /penthouse/
      if current_floor < 5
        puts "You ascend the stairs to the study."
        current_floor = 5
        return 'fifth_floor'
      elsif current_floor == 5
        puts "You are already here.  Try another floor."
        return 'fifth_floor'
      else
        puts "There has clearly been a mistake somewhere."
      end
    when /6/, /leave/, /exit/, /back/, /meadow/
      puts  "You descend the stairs, walk out the door, and keep going until the you reach the edge of the meadow."
      current_floor = 0
      return 'meadow'
    else
      puts "I don't understand your request"
    end
  end
end

testicles = SpiralStaircase.new("second")
testicles.floor_selector(0)
