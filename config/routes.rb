Rails.application.routes.draw do


  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index]
  end
  resources :advertisements
  resources :questions
  resources :users, only: [:new, :create]

  get 'about' => 'welcome#about'
  post 'users/confirm' => 'users#confirm'

  root 'welcome#index'
end
