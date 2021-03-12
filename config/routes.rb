Rails.application.routes.draw do
  resources :rental_forms
  resources :units do
    resources :rental_forms
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
