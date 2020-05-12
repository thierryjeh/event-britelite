class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def edit
    @user = User.find(params[:id])
  end

  def update
  @user = User.find(params[:id])
  if @user.update(post_params)
    flash[:success] = 'Great ! You have successfully edited your profile !'
    render 'show'
  else
    render 'edit'
  end
end

  def show
    @user = User.find(params[:id])
    unless is_current_user?(@user)
      flash[:danger] = "This is not your profile, you cannot access it"
      redirect_to root_path
    end
  end

  private

  def post_params # récupérer les params
    post_params = params.require(:user).permit(:first_name, :last_name, :description)
  end

  def is_current_user?(user)
    current_user.id == user.id ? true : false
  end

end
