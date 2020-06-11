class Api::V1::ZonesController < ApiController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_zone, only: [:show, :update, :destroy]

  # GET /zones
  def index
    @zones = Zone.all

    render json: @zones
  end

  # GET /zones/1
  def show
    render json: @zone
  end

  # POST /zones
  def create
    @zone = Zone.new(zone_params)

    if @zone.save
      render json: @zone, status: :created, location: @zone
    else
      render json: @zone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /zones/1
  def update
    if @zone.update(zone_params)
      render json: @zone
    else
      render json: @zone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /zones/1
  def destroy
    @zone.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zone
      @zone = Zone.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def zone_params
      params.require(:zone).permit(:name, :location, :average_rating, :picture_url, :park_id)
    end
end
