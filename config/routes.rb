Rails.application.routes.draw do
  
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end  

  get '/auth/:provider/callback', to 'sessions#create'

  root "todo_lists#index"
end
