class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    until @game_over == true
      take_turn
    end

    game_over_message
    reset_game
  end

  def take_turn
    # until @game_over != false
      show_sequence

      require_sequence

      round_success_message

      @sequence_length += 1
    # end

  end

  def show_sequence
    # @seq
    add_random_color
  end

  def require_sequence
    return @seq if @seq.length == @sequence_length
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    "Next round."
  end

  def game_over_message
    "Game over."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
