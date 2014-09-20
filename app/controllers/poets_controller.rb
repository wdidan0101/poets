class PoetsController < ApplicationController
  
  	def index
  		@poets = Poet.all
  	end

  	def show
  		@poet = Poet.find(params[:id])
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
	end


	def update
		puts params[:poet]
		@poet = Poet.find(params[:id])

		if @poet.update_attributes(poet_params)
			redirect_to poet_path(@poet)
		else
			render 'show'
		end
	end

	def destroy
		@poet = Poet.find(params[:id])
		@poet.destroy
		redirect_to poets_path
	end



  private
  	def poet_params
    	params.require(:poet).permit(:name, :origin, :avatar)
  	end

end
