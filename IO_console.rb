class IO_console

  def input
    gets.chomp.to_i
  end

  def log(message)
    puts message
  end

end