class SpiralStaircase

  def initialize(current_floor, floor_selection)
    @current_floor = current_floor
    @floor_selection = floor_selection
  end

  def floor_selector()

    case @floor_selection
    when /0/, /ground/, /entrance/
      if @current_floor == 0
        puts "You are already here.  Try another floor."
      elsif @current_floor != 0
        puts "You descend the stairs to the ground floor."
        return 'spiral_staircase'
      else
        puts "Something has clearly gone wrong."
      end
    when /1/, /first/, /machine/
      if @current_floor < 1
        puts "You ascend the stairs to the machine room."
        @current_floor == 1
        return 'machine_room'
      elsif @current_floor > 1
        puts "You descend the stairs to the machine room."
        @current_floor == 1
        return 'machine_room'
      elsif @current_floor == 1
      puts "You are already here.  Try another floor."
      else
        puts "There has clearly been a mistake somewhere."
      end
    when /2/, /second/, /kitchen/
      if @current_floor < 2
        puts "You ascend the stairs to the kitchen."
        @current_floor == 2
        return 'kitchen'
      elsif @current_floor > 2
        puts "You descend the stairs to the kitchen."
        @current_floor == 2
        return 'kitchen'
      elsif @current_floor == 2
      puts "You are already here.  Try another floor."
      else
        puts "There has clearly been a mistake somewhere."
      end
    when /3/, /third/, /library/
      if @current_floor < 3
        puts "You ascend the stairs to the library."
        @current_floor == 3
        return 'library'
      elsif @current_floor > 3
        puts "You descend the stairs to the library."
        @current_floor == 3
        return 'library'
      elsif @current_floor == 3
      puts "You are already here.  Try another floor."
      else
        puts "There has clearly been a mistake somewhere."
      end
    when /4/, /fourth/, /bedroom/
      if @current_floor < 4
        puts "You ascend the stairs to the bedroom."
        @current_floor == 4
        return 'bedroom'
      elsif @current_floor > 4
        puts "You descend the stairs to the bedroom."
        @current_floor == 4
        return 'bedroom'
      elsif @current_floor == 4
      puts "You are already here.  Try another floor."
      else
        puts "There has clearly been a mistake somewhere."
      end
    when /5/, /fifth/, /study/, /penthouse/
      if @current_floor < 5
        puts "You ascend the stairs to the study."
        @current_floor == 5
        return 'study'
      elsif @current_floor > 5
        puts "You descend the stairs to the study."
        @current_floor == 5
        return 'study'
      elsif @current_floor == 5
      puts "You are already here.  Try another floor."
      else
        puts "There has clearly been a mistake somewhere."
      end
    when /6/, /leave/, /exit/, /back/, /meadow/
      if @current_floor != 0
        puts  "You descend the stairs, walk out the door, and keep going until the you reach the edge of the meadow."
        @current_floor == 0
        return 'meadow'
      elsif @current_floor == 0
        puts "You walk out the door, and keep going until the you reach the edge of the meadow."
        return 'meadow'
      else
        puts "There has clearly been a mistake somewhere."
      end
    else
      puts "I don't understand your request"
    end
  end
end

testicles = SpiralStaircase.new(0, "first")
testicles.floor_selector()



#
#
#
#
#
#
#
#
#
#
# class TestingCaseSelection
#   def initialize(choice)
#     @choice = choice
#   end
#
#   def selection()
#
#     case @choice
#     when /one/, /1/
#       puts "Choice is 1"
#     when /two/, /2/
#       puts "Choice is 2"
#     else
#       puts "Don't get it"
#     end
#
#   end
# end
#
#
# testicles = TestingCaseSelection.new(1)
# testicles.selection()
#
#
#
#
#
#
#
#








# class TestingCaseSelection
#
#   def initialize(current_floor, floor_number, floor_selection)
#     @current_floor = current_floor
#     @floor_number = floor_number
#     @floor_selection = floor_selection
#   end
#
#   def case_floor_selection(floor_selection)
#     puts "1. current_floor is #{@current_floor}"
#     puts "2. floor_number is #{@floor_number}"
#     puts "3. floor_selection is #{@floor_selection}"
#
#     floor_selection = @floor_selection
#
#     puts "4. local floor_selection = #{floor_selection}"
#
#     case floor_selection
#     when /0/, /ground/, /entrance/
#       if @current_floor == 0
#         puts "You are already on the ground floor.  Try another floor."
#         deciding = false
#       elsif @current_floor != 0
#         puts "You descend the stairs to the ground floor."
#         return 'spiral_staircase'
#         deciding = false
#       else
#         puts "Something has clearly gone wrong."
#       end
#     when /1/, /first/, /machine/
#       if @current_floor < 1
#         puts "You ascend the stairs to the machine room."
#         @current_floor == 1
#         return 'machine_room'
#       elsif @current_floor > 1
#         puts "You descend the stairs to the machine room."
#         @current_floor == 1
#         return 'machine_room'
#       elsif @current_floor == 1
#         puts "You are already on the first_floor.  Try another floor."
#       else
#         puts "There has clearly been a mistake somewhere."
#       end
#     when /2/, /second/, /kitchen/
#       if @current_floor < 2
#         puts "You ascend the stairs to the kitchen."
#         @current_floor == 2
#         return 'kitchen'
#       elsif @current_floor > 2
#         puts "You descend the stairs to the kitchen."
#         current_floor == 2
#         return 'kitchen'
#       elsif @current_floor == 2
#         puts "You are already here.  Try another floor."
#       else
#         puts "There has clearly been a mistake somewhere."
#       end
#     else
#       "Something isn't working"
#     end
#
#   end
#
# end
#
# testicles = TestingCaseSelection.new(0,0,1)
#
# testicles.case_floor_selection(@floor_selection)




# testing = TestingCaseSelection.new(0, 0)
# testing.case_floor_selection(0)




# def testing_case_selection(floor_selection)
#
#   choice = floor_selection
#
#   case
#   when /0/
#     puts "floor selection is #{floor_selection}"
#   when /1/
#     puts "floor selection is #{floor_selection}"
#   else
#     puts "Nothing happened"
#   end
# end
#
# $floor_selection = 1
#
# testing_case_selection($floor_selection)



# deciding = true
# while deciding == true
#   print "> "
#   # floor_selection = $stdin.gets.chomp.downcase()
#
#
# end
