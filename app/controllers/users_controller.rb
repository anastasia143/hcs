class UsersController < ApplicationController
   def new
      @user = User.new
   end
   def index
      @users = User.all
   end
   def create
      @user = User.new(user_params)

      if @user.save
          redirect_to @user
      else
          render 'new'
      end
   end
   def edit
      @user = User.find(params[:id])
   end
   def destroy
       @user = User.find(params[:id])
       @user.destroy

       redirect_to users_path
   end
   def update
       @user = User.find(params[:id])
 
       if @user.update(user_params)
           redirect_to @user
       else
           render 'edit'
       end
   end
   private
      def user_params
          params.require(:user).permit(:surname, :name, :patronymic, :phone, :email)
      end
end