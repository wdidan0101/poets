class PoetsController < ApplicationController
  
  	def index
  		@poets = Poet.all
  	end

  	def show
  		@poet = Poet.find(params[:id])
  		@edit = true
	end

	def new
		@poet = Poet.new
	end

	def create
	  # render plain: params[:poet].inspect

	  @poet = Poet.new(poet_params)
	  @poet.user = current_user
	  @poet.save
	  redirect_to @poet
	 	#  	if @poet.save
		# 	redirect_to poets_path
		# else
		# 	render 'new'
		# end
	end

	##################################################
	##################################################

	def edit
		@poet = Poet.find(params[:id])
		@edit = false
	end


	def update
		@poet = Poet.find(params[:id])

		if @poet.update_attributes(params.require(:poet).permit(:name, :origin))
			redirect_to poets_path
		else
			render 'edit'
		end
	end

	def destroy
		@poet = Poet.find(params[:id])
		@poet.destroy
		redirect_to poets_path
	end



  private
  	def poet_params
    	params.require(:poet).permit(:name, :origin)
  	end

end
