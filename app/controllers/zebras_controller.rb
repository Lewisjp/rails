class ZebrasController < ApplicationController

	def index
		@zebras = Zebra.all
	end

	def show
		@zebra = Zebra.new
	end

	def new
		@zebra = Zebra.new
	end

	def edit
	end

	def create
		@zebra = Zebra.new(params[:zebra])

		 respond_to do |format|
      if @zebra.save
        format.html { redirect_to @zebra, notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @zebra }
      else
        format.html { render action: 'new' }
        format.json { render json: @zebra.errors, status: :unprocessable_entity }
      end
    end
  end

	def zebra_params
      params.require(:zebra).permit(:name, :age)
    end
end