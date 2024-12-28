Rails.application.routes.draw do
  resources :users do
    resources :addresses, only: %i[create update destroy]
  end

  get 'up' => 'rails/health#show', as: :rails_health_check
end
