class PoemsController < ApplicationController

	def index
		@poems = Poem.all
		@poet = Poet.find(params[:poet_id])
	end

	def show
		@poet = Poet.find(params[:poet_id])
		@poem = Poem.find(params[:id])
	end

	def new
		@poem = Poem.new
		@poet = Poet.find(params[:poet_id])
	end

	def create
		@poem = Poem.new(poem_params)
		@poem.poet = Poet.find(params[:poet_id])
		if @poem.save
			redirect_to poems_path
		else
			render 'new'
		end
	end

	def edit
		@poet = Poet.find(params[:poet_id])
		@poem = Poem.find(params[:id])
	end

	def update
		@poem = Poem.find(params[:id])

		if @poem.update_attributes(poem_params)
			redirect_to poems_path
		else
			render 'edit'
		end
	end

	def destroy
		@poem = Poem.find(params[:id])
		@poem.destroy
		redirect_to poems_path
	end

  private
  	def poem_params
    	params.require(:poem).permit(:title,:author,:content,:poet_id)
  	end

end
