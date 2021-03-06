Rails.application.routes.draw do

  resources :deliveries
  resources :destinations
  resources :buses
  resources :frequent_questions
  devise_for :users
  resources :extras
  resources :contacts
  root 'site#index'

  resources :products
  resources :measure_units
  resources :manufacturers
  resources :providers
  resources :subcategories
  resources :categories

  # Product variants list
  get '/products/:id/product_variants' => 'products#product_variants'

  # Create new variant
  get '/products/:id/product_variants/new' => 'products#new_product_variants'
  post '/create_product_variant' => 'products#create_product_variant'

  # Update existing variant
  get '/products/:id/product_variants/:variant_id/edit' => 'products#edit_product_variants'
  patch 'update_product_variant' => 'products#update_product_variant'

  # Site urls
  get '/contact' => 'site#contact'
  get '/about_us' => 'site#about_us'
  get '/product_categories' => 'site#product_categories'
  get '/product_offers' => 'site#product_offers'
  get '/category_products/:id' => 'site#category_products'
  get '/subcategory_products/:id' => 'site#subcategory_products'
  get '/manufacturer_products/:id' => 'site#manufacturer_products'
  get '/search' => 'site#search'
  get '/services' => 'site#services'
  post '/send_message' => 'site#send_message'
  get '/login' => 'site#login'
  post '/create_user' => 'site#create_user'


  # Dashboard views
  get '/dashboard' => 'dashboard#index'
  get '/messages' => 'dashboard#messages'
  get '/user_accounts' => 'dashboard#user_accounts'
  get '/new_user' => 'dashboard#new_user'
end
