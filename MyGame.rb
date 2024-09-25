require_relative 'Player'
require_relative 'Question'


class MyGame
  def initialize
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
    @current_player = @player_1
    @console = IO_console.new
  end

  def start
    @console.log("GAME START")
    while (!game_over?) do
    question = Question.new
    @console.log("#{@current_player.name}: #{question.generate_question}")

    player_answer = @console.input
    question.answer(player_answer) ?  
      begin
        @console.log("YES! You are correct.") 
        @console.log("P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3")
      end
      : 
      begin 
        @console.log("Seriously? No!") 
        @current_player.lose_life
        @console.log("P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3")
      end 
    
    next_turn
    end

    game_over_message

  end

  def next_turn
    puts
    @console.log("----- NEW TURN -----")
    @current_player = @current_player == @player_1 ? @player_2 : @player_1
  end

  def game_over?
    @player_1.lives == 0 || @player_2.lives == 0
  end

  def game_over_message
    if (@player_1.lives == 0)
      puts
      @console.log("Player 2 wins with a score of #{@player_2.lives}/3")
    end

    if (@player_2.lives == 0)
      puts
      puts "Player 1 wins with a score of #{@player_1.lives}/3"
    end

    @console.log("----- GAME OVER -----")
    @console.log("Goodbye!")
    exit # stops entire program

  end
end