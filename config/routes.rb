Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    # get "/buy_product_url" => "products#buy_product_method"
    # get "/first_product_url"=>"products#first_product_method"

    # get "/one_product" => "products#one_product"

    # # query
    # get "/buy_product_url" => "products#buy_product_method"
    #  #segmented
    # get "/buy_product_url/:user_purchase" => "products#buy_product_method"

    #restful route
    get "/products" => "products#index"
    
    get "/products/:id" => "products#show"

    post "/products" => "products#create"
    
    patch "products/:id" => "products#update"

    delete "products/:id" => "products#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

   post "/orders" => "orders#create"
 
 post "/carted_products" => "carted_products#create"

 end
end
