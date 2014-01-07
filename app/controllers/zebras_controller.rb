class ZebrasController < ApplicationController

	def index
		@zebras = Zebra.all
	end

	def show
		@zebra = Zebra.find(params[:id])
	end

	def new
		@zebra = Zebra.new
	end

	def create
		@zebra = Zebra.new(params[:zebra])

		 respond_to do |format|
      if @zebra.save
        format.html { redirect_to @badzebra, notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @zebra }
      else
        format.html { render action: 'new' }
        format.json { render json: @zebra.errors, status: :unprocessable_entity }
      end
    end
  end
  	
  	def edit
	@zebra = Zebra.find(params[:id])
	end

	def update
		@zebra = Zebra.find(params[:id])
		if @zebra.update_attributes(params[:zebra])
			redirect_to @badzebra
		else
			render "edit"
		end
	end
end