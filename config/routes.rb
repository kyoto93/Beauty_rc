Rails.application.routes.draw do
  resources :genres
  resources :histories
  # exceptでshowを除外
  root to:'tops#index'
  get 'mypage', to: 'users#mypage'
  # get 'histories/:id' => 'histories#index', as: 'history'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
