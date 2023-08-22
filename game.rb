class Game
  def initialize()
    @turn = true
  end
  def checkWinner(player1,player2)
    if player1.lives>player2.lives
      puts "#{player1.name} wins with a score of #{player1.lives}/3"
    else
      puts "#{player2.name} wins with a score of #{player2.lives}/3"
    end
    puts "----- GAME OVER -----"
    puts "Good Bye!"
  end
  def start()

    player1 = Player.new("Player1")
    player2 = Player.new("Player2")
    until (player1.lives<1 || player2.lives<1)
      if @turn == true #player1
        question = Question.new()
        question.qout(player1.name)
        playerAnswer = gets.chomp
        if question.compare(player1.name,playerAnswer) == false
          player1.subtractLife
        end
        puts "P1 #{player1.lives}/3 vs P2 #{player2.lives}/3"
        @turn = !@turn
        if player1.lives >0
          puts "----- NEW TURN -----"
          question = nil
        end
      else #player2
        question = Question.new()
        question.qout(player2.name)
        playerAnswer = gets.chomp
        if question.compare(player2.name,playerAnswer) == false
          player2.subtractLife
        end
        puts "P1 #{player1.lives}/3 vs P2 #{player2.lives}/3"
        @turn = !@turn
        puts "----- NEW TURN -----"
        if player2.lives >0
          puts "----- NEW TURN -----"
          question = nil
        end
      end
    end
    checkWinner(player1,player2)
  end
end