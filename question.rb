class Question
  attr_accessor :num1, :num2, :answer

  def initialize()
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = @num1 + @num2
  end
  def qout(player)
    puts "#{player}: What does #{@num1} plus #{@num2} equal?"
  end
  def compare(player,playerAnswer)
      if playerAnswer.to_i == @answer
        puts "#{player}: YES!  You are correct!"
        true
      else
        puts "#{player}: Seriously?!  You are NOT correct!"
        false
      end
  end
end
