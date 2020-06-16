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
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
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
end
