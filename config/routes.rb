Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :restaurants, except: [:index, :delete] do
    resources :reviews, except: [:update, :delete]
  end
end
