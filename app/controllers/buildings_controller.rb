class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end
  
  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
    respond_to do |format|
      if @building.save
        format.html {
          redirect_to @building, notice: "Building was successfully created."
        }
      else
        format.html { render :new }
      end
    end
    # @building = Building.create( name: params[:name], address: params[:address], city: params[:city])
    # # puts "\n\n\n\n\n", @building, "\n\n\n"
    # redirect_to '/buildings/index'
  end

  def show
    @building = Building.find(params[:id])
    @apartments = Apartment.where(building_id: @building.id)
  end



  def update
  end

  private

  def building_params
    params.require(:building).permit(:name, :address, :city)
  end
end
