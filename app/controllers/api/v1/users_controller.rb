class Api::V1::UsersController < ApiController
    skip_before_action :authenticate_user!, only: [:index, :show, :all]
    before_action :set_user, only: [:show, :update, :destroy]
    
    def index
        @users = User.all
        render json: @users, status: :ok
    end

    def all
        @users = User.all
        render json: @users, status: :ok
    end

    def show 
        begin
            render json: @user, only: [:name, :picture_url, :location], include: :posts, status: :ok
        rescue ActiveRecord::RecordNotFound
            render json: {
                message: "User not found with that ID"
            }, status: 404
  
        rescue StandardError => e
            render json: {
                message: e.to_s
            }, status: 500
        end
    end

    def update 
        if @user.update(user_params)
            render json: {
                message: "ok",
                user: @user
            }, status: :ok
        else 
            render json: {
                message: @user.errors
            }, status: 500
        end
    end

    def profile
            render json: current_user, only: [:name, :picture_url, :location, :email], include: :posts, status: :ok
    end
  
    def destroy
        @user.destroy
        render json: {
            message: "ok"
        }, status: :ok
    end
    
    private 
  
    def set_user
        a_user = User.find(params[:id])
        if(current_user == a_user)
            @user = a_user
        else
            exclude_columns = ['password', 'email']
            columns = User.attribute_names - exclude_columns
            @user = User.select(columns).find(params[:id])
        end

    end
  
    def user_params
      params.permit(:name, :location, :picure_url)
    end
end