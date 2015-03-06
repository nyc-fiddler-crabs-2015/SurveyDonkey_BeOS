class User < ActiveRecord::Base
  has_secure_password
  # def self.authenticate(params)
  #   @user = User.find_by(username: params[:username])
  #    if @user && @user.authenticate(params[:password])
  #       @user
  #    else
  #       nil
  #     end
  # end
end

