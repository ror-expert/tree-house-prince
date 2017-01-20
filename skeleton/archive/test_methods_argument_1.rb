class Introduction

  def enter()

    @exit_command = {

      'foo' => 'room'

    }



    puts "Introduction is here."

    return @exit_command['foo']


  end

end

class Room

  def initialize(foo)
    @foo = foo
    @bar = foo
    $exit_staircase = 'end'
  end

  def selector()

    @exit_commands = {
      'foobar' => 'finished'
    }

    case @user_selection
    when "bar"
      @foo = "bar"
      puts "foo is now #{@foo}, bar is #{@bar}"
      # return 'end'
    when "foo"
      @bar = "foo"
      puts "foo is #{@foo}, bar is now #{@bar}"
      # return 'end'
    end

  end

  def enter()

    while @foo == @bar

    puts "foo is #{@foo}, bar is #{@bar}"

    print "> "

    @user_selection = $stdin.gets.chomp.downcase()

    selector()

    return @exit_commands['foobar']

    end

  end

end

class Finished

  def enter()

    puts "This is the end."

  end

end
