require 'byebug'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @game_over = false
    @sequence_length = 1
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    system("clear")
    show_sequence
    require_sequence
    round_success_message
    @sequence_length += 1
  end

  def show_sequence
    add_random_color
    puts "Sequence is : #{@seq}"
    system_pause
  end

  def require_sequence
    system("clear")
    puts "Enter Sequence : "
    input_string = gets.chomp
    @game_over = true unless input_string.split == @seq
  end

  def add_random_color
    rand_color = COLORS.shuffle.first
    @seq << rand_color
  end

  def round_success_message
    system("clear")
    puts "Correct Sequence!" unless @game_over
  end

  def game_over_message
    system("clear")
    puts "Sorry, that was the wrong"
    puts "The correct sequence was #{@seq}"
  end

  def system_pause
    puts "Enter any key ..."
    STDIN.gets
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

def get_play
  input = STDIN.gets.chomp
  unless "yn".include?(input)
    raise "Did not enter y or n"
  end
  input
end

if __FILE__ == $PROGRAM_NAME
  game = Simon.new
  play = true
  while play
    game.play
    puts "\n~~~\nPlay Again ? (y/n)"
    begin
      input = get_play
    rescue
      puts "Please only enter y or n"
      retry
    end
    play = false if input == "n"
  end
  puts "Game End"
end
