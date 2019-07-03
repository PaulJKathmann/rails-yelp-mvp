Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :new, :create, :show] do                            # member => restaurant id in URL
    resources :reviews, only: [ :new, :create ]                     # RestaurantsController#chef
  end

  namespace :admin do
    resources :restaurants do
      resources :reviews
    end
  end
end
