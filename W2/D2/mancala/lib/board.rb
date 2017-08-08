require 'byebug'

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @cups = Array.new(14) { [] }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_index do |idx|
      4.times { @cups[idx] << :stone } unless idx == 6 || idx == 13
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Invalid starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    idx = start_pos
    hand = @cups[idx].dup
    @cups[idx] = []
    until hand.empty?
      # byebug
      idx += 1
      idx = 0 if idx > 13
      next if idx == 6 && @player2 == current_player_name
      next if idx == 13 && @player1 == current_player_name
      @cups[idx] << hand.shift
    end
    render
    next_turn(idx)
  end

  def next_turn(ending_cup_idx)
    # byebug
    return :prompt if ending_cup_idx == 6 || ending_cup_idx == 13
    return :switch if @cups[ending_cup_idx].length == 1
    ending_cup_idx
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?(&:empty?) || @cups[7..12].all?(&:empty?)
  end

  def winner
    case @cups[6] <=> @cups[13]
    when -1
      return @player2
    when 0
      return :draw
    when 1
      return @player1
    end
  end
end
