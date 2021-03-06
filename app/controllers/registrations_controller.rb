class RegistrationsController < Devise::RegistrationsController
  respond_to :json
def create
    @user = User.new(sign_up_params)
    # We could set default values here if we want.
    # @user.name = "test"
    # @user.picture_url = "test"
    # @user.location = "test"
    if @user.save
      render json: @user
    else
      render json: { errors: @user.errors }
    end
  end
private
def sign_up_params
    params.permit(:email, :password, :password_confirmation, :location, :name, :picture_url )
  end
end