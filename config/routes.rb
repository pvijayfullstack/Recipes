Recipes::Application.routes.draw do
  devise_for :users

  resources :recipes do
    collection do
      post :selected_items
    end
  end
  #root :to => redirect('/recipes')

  root :to => "home#index"

  devise_scope :user do
    get "/login" => "devise/sessions#new"
  end

  devise_scope :user do
    get "/logout"  => 'devise/sessions#destroy'
  end

end
