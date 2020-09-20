class BoardsController < ApplicationController
  def index
    
  end


  def create
    @board=Board.new(users_id: current_user.id )
    if @board.save
      redirect_to board_path
    else
      redirect_to root_path
    end
  end

  def show
    @user=User.find(params[:id])
    @board=Board.where(users_id: @user.id)
    @introductions=Introduction.where(boards_id: @board.id)
  end

 
end
