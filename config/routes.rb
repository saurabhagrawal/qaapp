Qaapp::Application.routes.draw do

  resources :questions do
  	member do
  		get 'up_vote'
  		get 'down_vote'
  	end
  	resources :answers
  end

  authenticated :user do
    root :to => 'questions#index'
  end
  root :to => "home#index"

  devise_for :users
  resources :users
end