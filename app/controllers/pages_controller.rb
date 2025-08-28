class PagesController < ApplicationController
  def rules
    render({ :template => "game_templates/rules" })
  end

  def rock
    @computer_move = [ "rock", "paper", "scissors" ].sample

    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render({ :template => "game_templates/play_rock" })
  end

  def paper
    @computer_move = [ "rock", "paper", "scissors" ].sample

    if @computer_move == "rock"
      @outcome = "won"
    elsif @computer_move == "paper"
      @outcome = "tied"
    else
      @outcome = "lost"
    end

    render({ :template => "game_templates/play_paper" })
  end

  def scissors
    @computer_move = [ "rock", "paper", "scissors" ].sample

    if @computer_move == "rock"
      @outcome = "lost"
    elsif @computer_move == "paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end

    render({ :template => "game_templates/play_scissors" })
  end
end
