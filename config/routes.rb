Rails.application.routes.draw do
  devise_for :users 
  resources :boards, only:[:create,:show] do
    resources :introductions,only:[:new,:create,:destroy]do
      collection do
        get'change'
      end
    end
  end
  root 'boards#index'
end
