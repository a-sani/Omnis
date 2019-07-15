class UsersController < ApplicationController
	def show
    	@user = User.find(params[:id])
  	end

  	def new
    	@user = User.new
  	end

  	def create
    	@user = User.new(user_params)
    	if @user.save
        log_in @user
    		flash[:success] = "Welcome to the Homepage!"
      	redirect_to @user #user url
    	else
      		render 'new'
    	end
  	end

  	private #strict parameter requirements

  		def user_params
      		params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    	end

end
