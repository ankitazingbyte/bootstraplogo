Rails.application.routes.draw do

  resources :blogs 
  mount Ckeditor::Engine => '/ckeditor'
  resources :abouts
  devise_for :users
  
  get 'logos/index'
  	root 'logos#index'
  	resources :order_statuses
  	resource :cart, only: [:show]
  	resources :order_items, only: [:create, :update, :destroy]
  	resources :orders
  	resources :logos 
    resources :searches 
    get 'home/index'
    get 'home/account'
    get 'home/contact'
    get 'home/need_custom_logo'
  post 'home/contact_us_mailer' 
end
