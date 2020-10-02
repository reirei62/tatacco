class IntroductionsController < ApplicationController
  def new
    @board=Board.find(params[:board_id])
    @user=User.where(id: @board.users_id)
  
  end

  def create
    @board=Board.find(params[:board_id])
    @user=User.where(id: @board.users_id)
    @introduction=Introduction.new(introduction_params)
    if @introduction.save!
      redirect_to board_path(id: @user[0][:id])
    else
      render :new
    end
  end

  def destroy
    @user=User.where(id: params[:id])
    @introduction=Introduction.find(params[:board_id])
    @introduction.destroy
    redirect_to board_path(id: @user[0][:id])
  end


  def change
    @introduction=Introduction.find(params[:board_id])
    @introduction.permission = true
    @introduction.save
    redirect_to board_path(id: current_user.id)
  end



  private

  def introduction_params
    params.permit(:content,:category_id).merge(boards_id: params[:board_id],users_id: current_user.id)
  end
end
