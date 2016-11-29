Rails.application.routes.draw do
  root 'health#index'

  get 'health/health_status' => 'health#health_status'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
