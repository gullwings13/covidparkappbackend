class Api::V1::ParksController < ApiController
  skip_before_action :authenticate_user!, only: [:index, :show, :all]
  before_action :set_park, only: [:show, :update, :destroy]

  # GET /parks
  def index
    @parks = Park.all

    render json: @parks
  end

  # GET /parks/1
  def show
    render json: @park, include: :zones
  end

  # POST /parks
  def create
    @park = Park.new(park_params)

    if @park.save
      render json: @park, status: :created, location: @park
    else
      render json: @park.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parks/1
  def update
    if @park.update(park_params)
      render json: @park
    else
      render json: @park.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parks/1
  def destroy
    @park.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_park
      @park = Park.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def park_params
      params.require(:park).permit(:name, :boro, :address, :link, :average_rating, :picture_url)
    end
end
