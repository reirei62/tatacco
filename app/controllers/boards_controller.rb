class BoardsController < ApplicationController
  def index
    
  end


  def create
    authenticate_user!
    @board=Board.new(users_id: current_user.id )
    if @board.save
      redirect_to board_path(id: @board.users_id)
    else
      redirect_to board_path(id: current_user.id)
    end
  end

  def show
    @user=User.find(params[:id])
    @board=Board.where(users_id: @user.id)
    @introductions=Introduction.where(boards_id: @board[0][:id],permission: true)
    @new_introductions=Introduction.where(boards_id: @board[0][:id],permission: false)
  end

end
