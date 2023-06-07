Rails.application.routes.draw do
  resources :tasks
  resources :offers
  resources :tenders
  resources :employees
  resources :departments
  resources :companies
  resources :products
  resources :subcategories
  resources :categories

  root "general#landing"

  get "landing", to: "general#landing"

end
