Rails.application.routes.draw do
  resources :reservable_by_staffs
  resources :staffs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
