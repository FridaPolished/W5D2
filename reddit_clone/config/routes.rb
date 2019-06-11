Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, except: [:index]
  resource :session, only: [:create, :new, :destroy]
  resources :subs, except: [:destroy]  

  resources :posts, only: [:edit, :update] do
    resources :sub_posts, only: [:new]
  end
  resources :sub_posts
  
end
