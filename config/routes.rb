Rails.application.routes.draw do
  resources :tenders
  resources :employees
  resources :departments
  resources :companies
  resources :products
  resources :subcategories
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
