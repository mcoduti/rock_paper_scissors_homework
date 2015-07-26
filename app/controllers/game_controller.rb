class GameController < ApplicationController
  # This action is for the bare domain. You can ignore it.
  def home
    redirect_to("/mockup.html")
  end

  # Your code goes below.


  def rps
    @user_move = params["the_move"]

    @computer_move =["rock","paper","scissors"].sample

      if @user_move == @computer_move
      @outcome = "Tie!"
    elsif @user_move == "paper" && @computer_move == "rock"
      @outcome = "You won!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @outcome = "You lost!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @outcome = "You lost!"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @outcome = "You won!"
    elsif @user_move == "rock" && @computer_move == "paper"
      @outcome = "You lost!"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @outcome = "You won!"
    end




    render("move.html.erb")
  end

end
