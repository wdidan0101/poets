class UsersController < ApplicationController  
	def new
       @user = User.new
  end

  def show
      @user = User.find(params[:user_id])
  end

  def create
     @user = User.new(params.require(:user).permit(:name, :email, :password))
     if @user.save
          # log the user in
          redirect_to root_path
     else
          render 'new'
     end
  end

  def edit
    @user = User.find(params[:user_id])
  end

  def update
    @user = User.find(params[:user_id])

    if @user.update_attributes(user_params)
      redirect_to welcome_path(@user)
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email)
    end


end