Rails.application.routes.draw do
  resources :users do
    resources :addresses, only: %i[create update destroy]

    collection do
      get :check_email
      get :check_cpf
    end
  end

  get 'up' => 'rails/health#show', as: :rails_health_check
end
