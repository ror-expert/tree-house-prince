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

  def ring_translation(attempted_translation)

    case attempted_translation
    when /my queen/
      return 'translated'
      puts "That is correct!"
      @ring_translation = true
      marriage_sequence()
    else
      return 'not_translated'
      puts "Tai nėra tai, ką užrašas reiškia!\n"
      puts "Try again."
      print "> "
    end

  end

  def enter()

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

    What does the inscription mean?\n\n"""

    print '> '

    attempted_translation = $stdin.gets.chomp.downcase()

    @ring_translation = false

    while @ring_translation == false
      ring_translation(attempted_translation)
    end

    return 'finished'

  end
end


# testing = Marriage.new()
# testing.enter()
