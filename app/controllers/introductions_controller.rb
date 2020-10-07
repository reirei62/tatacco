class IntroductionsController < ApplicationController
  before_action :set_board_and_user, only: [:create,:new]
  before_action :set_introduction, only: [:destroy,:change]
  before_action :back_defferent_person, only: [:destroy]
  before_action :back_not_current_user, only: [:change]

  def new
    
  end

  def create
    authenticate_user!
    @introduction=Introduction.new(introduction_params)
    if @introduction.save!
      redirect_to board_path(id: @user[0][:id])
    else
      render :new
    end
  end

  def destroy
    @user=User.where(id: params[:id])
    @introduction.destroy
    redirect_to board_path(id: @user[0][:id])
  end


  def change
    @introduction.permission = true
    @introduction.save
    redirect_to board_path(id: current_user.id)
  end



  private

  def introduction_params
    params.permit(:content,:category_id).merge(boards_id: params[:board_id],users_id: current_user.id)
  end

  def set_board_and_user
    @board=Board.find(params[:board_id])
    @user=User.where(id: @board.users_id)
  end

  def set_introduction
    @introduction=Introduction.find(params[:board_id])
  end

  def back_defferent_person
    unless current_user.id == params[:id] || @introduction.users_id == current_user.id
      redirect_to root_path
    end
  end

  def back_not_current_user
    board=Board.where(id: @introduction.boards_id)
    unless current_user.id == board[0][:users_id]
      redirect_to root_path
    end
  end
end
