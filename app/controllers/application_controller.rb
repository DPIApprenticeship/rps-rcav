class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def index
    render({ :template => "index.html.erb"})
  end

  def play_rock
    index = rand(3)
    choices = ["rock", "paper", "scissors"]
    @comp_choice = choices[index] 


    if @comp_choice == "rock"
      @outcome = "tied"
    elsif @comp_choice == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    
    render({ :template => "game_templates/rock.html.erb"})
  end

  def play_paper
    index = rand(3)
    choices = ["rock", "paper", "scissors"]
    @comp_choice = choices[index] 

    if @comp_choice == "rock"
      @outcome = "won"
    elsif @comp_choice == "paper"
      @outcome = "tied"
    else
      @outcome = "lost"
    end
    render({ :template => "game_templates/paper.html.erb"})
  end

  def play_scissors
    index = rand(3)
    choices = ["rock", "paper", "scissors"]
    @comp_choice = choices[index]

    if @comp_choice == "rock"
      @outcome = "lost"
    elsif @comp_choice == "paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end
    render({ :template => "game_templates/scissors.html.erb"})
  end
end
