class IntroductionsController < ApplicationController
  def new
    @board=Board.find(params[:board_id])
    @user=User.where(id: @board.users_id)
  
  end

  def create
    @introduction=Introduction.new(introduction_params)
    if @introduction.save!
      redirect_to board_path(id: params[:board_id])
    else
      
    end
  end

  def destroy
    @introduction=Introduction.find(params[:board_id])
    @introduction.destroy
    redirect_to board_path(id: @introduction.boards_id)
  end


  def change
    @introduction=Introduction.find(params[:board_id])
    @introduction.permission = true
    @introduction.save
    redirect_to board_path(id: @introduction.boards_id)
  end



  private

  def introduction_params
    params.permit(:content,:category_id).merge(boards_id: params[:board_id],users_id: current_user.id)
  end
end
