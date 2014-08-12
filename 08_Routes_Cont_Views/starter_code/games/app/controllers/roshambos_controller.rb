class roshamboConroller < ApplicationController
  def new
    @random_number = rand(3)
    @play_array = [R,P,S]
    @computer_play= [@random_number]@play_array
  end

  def show
    @random_number = rand(3)
    @play_array = [R,P,S]
    @computer_play= @play_array[@random_number] 
    @chosen_play = params[:id].to_s

    @won = false

    if @computer_play == @chosen_play
      @msg = "It's a tie"

    elsif @computer_play == 'R'
      if @chosen_play == 
        @won = true
      
    else
      @msg = "Man you suck."
    end
  end
end
