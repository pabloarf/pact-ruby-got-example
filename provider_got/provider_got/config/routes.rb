Rails.application.routes.draw do
  get 'characters', to: 'characters#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
