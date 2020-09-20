class IntroductionsController < ApplicationController
  def new
    @board=Board.find(params[:board_id])
    @user=User.where(id: @board.users_id)
  
  end

  def create
    binding.pry
    @introduction=Introduction.new(introduction_params)
    if @introduction.save!
      redirect_to board_path(:board_id)
    else
      
    end
  end



  private

  def introduction_params
    params.permit(:content,:category_id).merge(boards_id: params[:board_id],users_id: current_user.id)
  end
end
