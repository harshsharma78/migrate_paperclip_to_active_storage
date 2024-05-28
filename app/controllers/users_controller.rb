class UsersController < ApplicationController
  def index
   @users = User.all
  end

  def new
   @user = User.new
  end

  def create
     @user = User.new(user_params)

     respond_to do |format|
       if @user.save
         format.html { redirect_to users_path, message: "User created!" }
       else
         format.html { render json: @user.errors, status: :unprocessable_entity }
       end
     end
  end

  private
 def user_params
   params.require(:user).permit(:file)
 end
end
