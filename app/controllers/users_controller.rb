class UsersController < ApplicationController
#一覧画面表示アクション
  def index
    @users = User.all
  end

#新規画面登録アクション
  def new
    @user = User.new
  end

  def create
    User.create(user_params)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
  end


  def destroy
    user = User.find(params[:id])
    user.delete
  end

  private
  def user_params
    params.require(:user).permit(:word, :mean)
  end

end
