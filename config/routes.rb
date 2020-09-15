Rails.application.routes.draw do
  devise_for :users 
  resources :boards, only:[:index,:create] 
  root 'manuals#index'
  resources :introductions,only:[:new]
end
