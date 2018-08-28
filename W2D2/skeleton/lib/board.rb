class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player_one = name1
    @player_two = name2
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    p "Inside place_stones method."
    # p "@cups: #{@cups}"
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup,i|
      next if i == 6 || i == 13
      4.times {cup << :stone}
      # p "cups: #{cups}"
    end
    # p "AFTER FILLING @cups: #{@cups}"
  end


  def valid_move?(start_pos)
    p "start_pos: #{start_pos}"
    # p "@cup[start_pos]: #{@cup[start_pos]}"

    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12

    p "@cups: #{@cups}"
    p "@cups[start_pos]: #{@cups[start_pos]}"
    p "@cups[start_pos].empty?: #{@cups[start_pos].empty?}"
    raise "Starting cup is empty" if @cups[start_pos].empty?

  end

  def make_move(start_pos, current_player_name)
    stones_to_distribute = @cups[start_pos].length
    p "start_pos: #{start_pos}"
    p "Before clearing @cups[start_pos]: #{@cups[start_pos]}"
    p "Number of stones to distribute: #{stones_to_distribute}"
    @cups[start_pos] = []

    i = 1
    p "Before distributing @cups[start_pos]: #{@cups[start_pos]}"
    while i <= stones_to_distribute
      p "i: #{i}"
      if (start_pos + i) == 6 || (start_pos + i) == 13
        p "break out of i and increase."
        i += 1
        break
      end
      p "inside loop: @cups[start_pos+1]: #{@cups[start_pos+1]}"
      p "Before dropping stone into: #{@cups[start_pos+1]}"
      @cups[start_pos+1] << :stone
      p "After dropping stone into: #{@cups[start_pos+1]}"


      i+=1
    end

  end

  def next_turn(ending_cup_idx)
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
  end

  def winner
  end
end
