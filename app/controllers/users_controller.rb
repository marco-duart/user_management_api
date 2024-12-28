class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

  def index
    @q = User.ransack(params[:search])
    @users = @q.result.includes(:addresses)

    if @users.empty?
      render json: { error: I18n.t('user.errors.no_users_found') }, status: :not_found
    else
      render json: @users
    end
  end

  def show
    if @user.nil?
      render json: { error: I18n.t('user.errors.not_found') }, status: :not_found
    else
      render json: @user
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    render json: { message: I18n.t('user.messages.deleted_successfully') }, status: :ok
  end

  private

  def set_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :cpf, :birthday,
                                 addresses_attributes: %i[id street number neighborhood city state country zip_code _destroy])
  end
end
