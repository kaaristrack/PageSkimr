Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  resources :books do
    resources :reviews
  end
  root 'books#index'
end
