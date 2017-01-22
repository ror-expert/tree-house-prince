require_relative "Scene.rb"

class Marriage < Scene

  def marriage_sequence()

    puts """

    HE: 'I think this ring should belong to thee.'

    YOU: Thank you, I accept.'

    He places the ring on your finger.

    HE: 'We are not, then, in a dream?'

    YOU: 'A dream come true, methinks.'

    HE: 'If that be so, then thou art my queen.'

    YOU: 'And thou in that case art my king.'

    You place your lips on his and seal your marriage with a kiss.

    """

  end

  def outcome_ring_translation()

    case @status
    when "success"
      marriage_sequence()
    when "failure"
      puts "You give up and leave the tree-house castle, never to return."
    else
      "Something has gone wrong here."
    end

  end

  def ring_translation(attempted_translation)

    case attempted_translation
    when /my queen/
      puts "That's correct!"
      @choice = true
      @status = "success"
      return @status
    when /give up/
      puts "That is a shame, you almost found what you had always looked for."
      @choice = true
      @status = "failure"
      return @status
    else
      puts "Sorry, that is incorrect.  Try again."
      @status = "try_again"
      return @status

    end
  end

  def enter()

		clear_screen()

    @choice = false

    puts """When you wake up, you see a handsome prince sleeping on the floor next to you.
    You cuddle up next to him, and when you both wake up the following morning, you have the following exchange:

    HE: 'Art thou an angel?' He asks you.

    YOU: 'Nay, a princess.  Art thou thyself an angel?'

    HE: 'Nay, but a prince.'

    YOU: 'Is this thy castle?'

    HE: 'A castle-in-the-making.'

    YOU: 'It pleaseth me.'

    You both fall silent.

    The prince offers you an emerald ring pendant.

    It reads, 'Mano Karalienė'.

    What does the inscription mean?

    """

    while @choice == false

      print "> "

      attempted_translation = $stdin.gets.chomp.downcase()

      ring_translation(attempted_translation)

    end

    outcome_ring_translation()

    return 'finished'

  end
end

# testing = Marriage.new()
# testing.enter()
