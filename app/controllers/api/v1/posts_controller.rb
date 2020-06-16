class Api::V1::PostsController < ApiController
  skip_before_action :authenticate_user!, only: [:index, :show, :all]
  before_action :set_post, only: [:show, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.all
    print @posts
    render json: @posts
  end

  # GET /posts/1
  def show
    render json: @post
  end

  # POST /posts
  def create
    new_post_params = post_params
    new_post_params[:user] = current_user   
    @post = Post.new(new_post_params)

    if @post.save
      build_average_ratings_zone(@post.zone)
      build_average_ratings_park(@post.zone.park)
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    new_post_params = post_params
    new_post_params[:user] = current_user
    if @post.update(new_post_params)
      build_average_ratings_zone(@post.zone)
      build_average_ratings_park(@post.zone.park)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    zone = @post.zone
    park = @post.zone.park
    @post.destroy
    build_average_ratings_zone(zone)
    build_average_ratings_park(park)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    
    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:content, :masks, :not_crowded, :distancing, :user_id, :zone_id)
    end

    def build_average_ratings_park update_park
        update_park_masks_average = 0.0
        update_park_distancing_average = 0.0
        update_park_not_crowded_average = 0.0

        update_park.zones.each do |zone|
            update_park_masks_average += zone.average_masks
            update_park_distancing_average += zone.average_distancing
            update_park_not_crowded_average += zone.average_not_crowded
        end

        update_park_masks_average /= update_park.zones.length
        update_park_distancing_average /= update_park.zones.length
        update_park_not_crowded_average /= update_park.zones.length

        update_park.average_masks = update_park_masks_average
        update_park.average_distancing = update_park_distancing_average
        update_park.average_not_crowded = update_park_not_crowded_average

        update_park_rating = update_park_masks_average+update_park_distancing_average+update_park_not_crowded_average
        update_park.average_rating = update_park_rating/3
        update_park.save
    end


    def build_average_ratings_zone update_zone

        update_zone_masks_average = 0.0
        update_zone_distancing_average = 0.0
        update_zone_not_crowded_average = 0.0

        update_zone.posts.each do |post|
            if post.masks
                update_zone_masks_average += 3.0
            end
            if post.distancing
                update_zone_distancing_average += 3.0
            end
            if post.not_crowded
                update_zone_not_crowded_average += 3.0
            end
        end

        update_zone_masks_average /= update_zone.posts.length
        update_zone_distancing_average /= update_zone.posts.length
        update_zone_not_crowded_average /= update_zone.posts.length

        update_zone.average_masks = update_zone_masks_average
        update_zone.average_distancing = update_zone_distancing_average
        update_zone.average_not_crowded = update_zone_not_crowded_average

        update_zone_rating = update_zone_masks_average+update_zone_distancing_average+update_zone_not_crowded_average
        update_zone.average_rating = update_zone_rating/3
        update_zone.save
    end
end
