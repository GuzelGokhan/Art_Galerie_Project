Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :artists do
    resources :art_works, module: :artists, only: [:index]
  end

   resources :art_works, only: [:index , :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
