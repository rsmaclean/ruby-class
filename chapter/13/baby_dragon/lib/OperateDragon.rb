require '../lib/Dragon'

class OperateDragon
  @@commands= {
      'feed' => 1,
      'toss' => 2,
      'walk' => 3,
      'rock' => 4,
      'bed' => 5,
      'help' => 6
  }

  def create(dragon)
    @dragon = Dragon.new dragon
  end

  def do(cmd)
    if (!process_command(cmd))
      puts "You want the dragon to do what?  Please enter a valid command."
    end
  end

  def help
    puts 'To command your dragon, enter one of the following commands:'
    puts '  feed: feed your hungry dragon.'
    puts '  walk: walk your dragon to give him some exercise.'
    puts '  bed: put your tired dragon to bed.'
    puts '  toss: toss your dragon in the air.'
    puts '  rock: rock your dragon to sleep.'
    puts '  NOTE: you can use these commands in a sentance like, "Put my dragon to bed", but you can only give him one command at a time.'
    puts ''
    puts '  Additional commands:'
    puts '  help: list the commands you can use.'
    puts '  stop: stop operating your dragon.'
  end



  private

  def process_command(cmd)
    action = what_to_do(cmd)
    if (action == 1)
      @dragon.feed
    elsif (action == 2)
     @dragon.toss
    elsif (action == 3)
      @dragon.walk
    elsif (action == 4)
      @dragon.rock
    elsif (action == 5)
      @dragon.put_to_bed
    elsif (action == 6)
      help
    else
      return false
    end
    return true
  end

  def what_to_do(cmd)
    cmd.downcase.split(" ").each do |cmd_word|
      if (@@commands[cmd_word] != nil)
        return @@commands[cmd_word]
      end
    end
    return 0
  end

end