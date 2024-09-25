require_relative 'IO_console'

class Question

  def initialize
    # @player_1 = player_1
    # @player_2 = player_2
    # @turn = turn
    # @message = IO_console.new
    @rand_num_1 = rand(1..20)
    @rand_num_2 = rand(1..20)
  end

  def generate_question
    "What does #{@rand_num_1} plus #{@rand_num_2} equal?"
  end

  def answer(player_answer)
    player_answer == (@rand_num_1 + @rand_num_2)
  end



  # def generate_question
  #   rand_num_1 = rand(1..20)
  #   rand_num_2 = rand(1..20)

  #   if @turn
  #     puts "#{@player_1.name} What does #{rand_num_1} plus #{rand_num_2} equal"
  #     gets.chomp.to_i != (rand_num_1 + rand_num_2)
  #     puts "Seriously? No!"
  #     @player_1.lives -= 1
  #     @turn = false
  #   elsif @turn == false 
  #     puts "#{@player_2.name} What does #{rand_num_1} plus #{rand_num_2} equal"
  #     gets.chomp.to_i != (rand_num_1 + rand_num_2)
  #     puts "Seriously? No!"
  #     @player_2.lives -= 1
  #     @turn = true
  #   else
  #     puts "YES! You are correct."
  #   end
    

  #   puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"


  # end


end