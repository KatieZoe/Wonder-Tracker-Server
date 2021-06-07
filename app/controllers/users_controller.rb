class UsersController < ApplicationController

  def index
    @users = User.all
    if @users
      render json: {
        users: @users
      }
    else
      render json: {
        status: 500,
        errors: ['no users found']
      }
    end
  end

  def show
    @user = User.find(params[:id])
   if @user
      render json: {
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: ['user not found']
      }
    end
  end


  def edit
    @user = User.find(params[:id])
   if @user
      render json: {
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: ['user not found']
      }
    end
  end

  def create
   @user = User.new(user_params)

   respond_to do |format|
     if @user.save
       format.html { redirect_to @user, notice: "User was successfully created." }
       format.json { render :show, status: :created, location: @user }
     else
       format.html { render :new, status: :unprocessable_entity }
       format.json { render json: @user.errors, status: :unprocessable_entity }
     end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User created succefully" }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :image_url, :linkedin_url, :github_url, :student_status)
  end
end