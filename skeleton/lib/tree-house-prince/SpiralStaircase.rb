require_relative "Scene.rb"

class SpiralStaircase

  def initialize(current_floor)
    @current_floor = current_floor
    @floor_number = current_floor
  end

  def selection_text()
    puts  """
    You are at a spiral staircase.  There is a sign on the landing:

    0. Ground Floor: Entrance to the castle

    1. First Floor: Machine room

    2. Second Floor: Kitchen

    3. Third Floor: Library

    4. Fourth Floor: Royal Bedroom

    5. Penthouse: Study

    6. Exit the castle and go back to the meadow.

    Where would you like to go to?

    """
  end

  def floor_selector(selected_floor)

    puts selected_floor

    @exit = {
    'ground' => 'ground_floor',
    'first' => 'first_floor',
    'second' => 'second_floor',
    'third' => 'third_floor',
    'fourth' => 'fourth_floor',
    'fifth' => 'fifth_floor',
    'exit' => 'meadow',
    }

    # @floor_selection = floor_selection

    case selected_floor.to_s
    when /0/, /ground/, /entrance/
      if @current_floor == 0
        puts "You are already on the ground floor."
        return 'ground_floor'
      elsif @current_floor != 0
        puts "You descend the stairs to the ground floor."
        @current_floor = 0
        puts "current floor is #{@current_floor}"
        return 'ground_floor'
      else
        puts "Something has clearly gone wrong."
      end
    when /1/, /first/, /machine/
      if @current_floor < 1
        puts "You ascend the stairs to the first floor."
        @current_floor = 1
      return 'first_floor'
      elsif @current_floor > 1
        puts "You descend the stairs to the first floor."
        @current_floor = 1
        return 'first_floor'
      elsif @current_floor == 1
      puts "You are already here.  Try another floor."
      return 'first_floor'
      else
        puts "There has clearly been a mistake somewhere."
      end
    when /2/, /second/, /kitchen/
        if @current_floor < 2
          puts "You ascend the stairs to the second floor."
          @current_floor = 2
          return 'second_floor'
        elsif @current_floor > 2
          puts "You descend the stairs to the second floor."
          @current_floor = 2
          return 'second_floor'
        elsif @current_floor == 2
          puts "You are already here.  Try another floor."
          return 'second_floor'
        else
          puts "There has clearly been a mistake somewhere."
        end
    when /3/, /third/, /library/
        if @current_floor < 3
          puts "You ascend the stairs to the third floor."
          @current_floor = 3
          return 'third_floor'
        elsif @current_floor > 3
          puts "You descend the stairs to the third floor."
          @current_floor = 3
          return 'third_floor'
        elsif @current_floor == 3
          puts "You are already here.  Try another floor."
          return 'third_floor'
        else
          puts "There has clearly been a mistake somewhere."
        end
    when /4/, /fourth/, /bedroom/
      if @current_floor < 4
        puts "You ascend the stairs to the fourth floor."
        @current_floor = 4
        return 'fourth_floor'
      elsif @current_floor > 4
        puts "You descend the stairs to the fourth floor."
        @current_floor = 4
        return 'fourth_floor'
      elsif @current_floor == 4
        puts "You are already here.  Try another floor."
        return 'fourth_floor'
      else
        puts "There has clearly been a mistake somewhere."
      end
    when /5/, /fifth/, /study/, /penthouse/
      if @current_floor < 5
        puts "You ascend the stairs to the fifth floor."
        @current_floor = 5
        return 'fifth_floor'
      elsif @current_floor == 5
        puts "You are already here.  Try another floor."
        return 'fifth_floor'
      else
        puts "There has clearly been a mistake somewhere."
      end
    when /6/, /leave/, /exit/, /back/, /meadow/
      puts  "You descend the stairs, walk out the door, and keep going until the you reach the edge of the meadow."
      @current_floor = 6
      return 'meadow'
    else
      puts "Spiral staircase doesn't understand your request"
    end
  end

  def enter()

    floor_number = @floor_number

    while @current_floor == @floor_number

      selection_text()

      print "> "

      @floor_selection = $stdin.gets.chomp.downcase()

      selected_floor = @floor_selection

      floor_selector(selected_floor)

      case @current_floor
      when 0
        return @exit['ground']
      when 1
        return @exit['first']
      when 2
        return @exit['second']
      when 3
        return @exit['third']
      when 4
        return @exit['fourth']
      when 5
        return @exit['fifth']
      when 6
        return @exit['exit']
      else
        puts "Something has gone wrong"
      end

    end

  end

end

testing = SpiralStaircase.new(0)
testing.floor_selector(1.to_s)
