Rails.application.routes.draw do
  
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end  

  get 'auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root "todo_lists#index"
end
