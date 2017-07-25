SampleApp::Application.routes.draw do
  resources :requests

  resources :streets

  resources :towns

  resources :chats do
    get 'indexses', on: :collection
    
  end

  resources :cleanings do
    
    get :users
    member do
      get :shop_report, :user_report
    end
  end

  resources :stocks

  resources :providers

  resources :shops

  resources :moniks

  resources :coworkers

  resources :departments

  resources :companies

  resources :hardwares do
    get :index_department
  end

  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  root to: 'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  get 'index_minus' => 'cleanings#index_minus'
end
