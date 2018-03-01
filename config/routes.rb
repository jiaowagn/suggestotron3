Rails.application.routes.draw do
  resources :topics do
    member do
      post 'upvote'
      post 'downvote'
    end
  end

  get 'about' => 'about#index'

  root 'topics#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
