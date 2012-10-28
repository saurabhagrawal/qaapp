Qaapp::Application.routes.draw do

  resources :questions do
  	resources :answers
  end

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end