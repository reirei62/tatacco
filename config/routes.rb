Rails.application.routes.draw do
  devise_for :users 
  resources :boards, only:[:create,:show] do
    resources :introductions,only:[:new,:create]
  end
  root 'boards#index'
end
