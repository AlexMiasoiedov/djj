class Api::V1::LoginController < ApplicationController
  skip_before_action :authenticate_user!

  # curl -v -X POST -H "Content-Type: application/json" -d '{"user": {"email": "alex@mail.com", "password": "password0"}}' http://localhost:3000/api/v1/login
  def create
    usr = User.find_by(:email => login_params[:email])
    if usr.valid_password?(login_params[:password])
      render :json => { :token => JsonWebToken.encode({ :sub => usr.id }) }
    else
      render :json => { :errors => ["invalid login params!"] }
    end
  end

  private

  def login_params
    params.require(:user).permit(:email, :password)
  end
end
