require 'rails_helper'

RSpec.describe Board, type: :model do
  before do
    @user = FactoryBot.build(:user)
    @board = FactoryBot.build(:board)
  end 

  describe 'ボード作成' do
    it "一人のユーザーはボードを一つまでしか作れない" do
      @board.users_id= 1
      @board.save
      board2 = Board.new(users_id: "1")
      board2.valid?
      binding.pry
    end
  end
end