class UsersController < ApplicationController  
	def new
       @user = User.new
  	end

  def create
     @user = User.new(params.require(:user).permit(:name, :email, :origin, :password))
     if @user.save
          # log the user in
          redirect_to root_path
     else
          render 'new'
     end
  end
end