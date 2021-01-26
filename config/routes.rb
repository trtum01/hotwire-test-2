Rails.application.routes.draw do
  resources :todos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/completed/:id', to: 'completed#update', as: 'update_completed'
  root to: "todos#index"
end
