require_relative 'IO_console'

class Question

  def initialize
    @rand_num_1 = rand(1..20)
    @rand_num_2 = rand(1..20)
  end

  def generate_question
    "What does #{@rand_num_1} plus #{@rand_num_2} equal?"
  end

  def answer(player_answer)
    player_answer == (@rand_num_1 + @rand_num_2)
  end

end