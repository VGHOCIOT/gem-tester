Rails.application.routes.draw do
  resources :ingredients
  resources :steps
  resources :cuisines
  resources :recipes
  scope "(:locale)", locale: /# {I18n.available_locales.join("|")} / do 

    resources :pages
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    # root "articles#index"
    root "pages#index"
  end 
end
