class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

  def index
    if params[:birthday].present?
      birthday_date = Date.parse(params[:birthday])

      @q = User.ransack(birthday_eq: birthday_date)

      if params[:email].present? || params[:cpf].present?
        @q = @q.result.where(email_cont: params[:email],
                             cpf_cont: params[:cpf])
      end
    else
      @q = User.ransack(filter_params)
    end

    @users = @q.result

    if @users.empty?
      render json: [], status: :ok
    else
      render json: @users, include_addresses: false
    end
  end

  def show
    if @user.nil?
      render json: { error: I18n.t('user.errors.not_found') }, status: :not_found
    else
      render json: @user, include_addresses: true
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

  def check_email
    if User.exists?(email: params[:email])
      render json: { message: I18n.t('user.errors.check_email') }, status: :unprocessable_entity
    else
      render json: { message: I18n.t('user.messages.check_email') }, status: :ok
    end
  end

  def check_cpf
    if User.exists?(cpf: params[:cpf])
      render json: { message: I18n.t('user.errors.check_cpf') }, status: :unprocessable_entity
    else
      render json: { message: I18n.t('user.messages.check_cpf') }, status: :ok
    end
  end

  private

  def set_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :cpf, :birthday,
                                 addresses_attributes: %i[id street number complement neighborhood city state country zip_code _destroy])
  end

  def filter_params
    {
      email_cont: params[:email],
      cpf_cont: params[:cpf]
    }.compact
  end
end
