Frodo::Application.routes.draw do
  
# routes for all of the code tables in the app
  resources :phases, :states, :statuses, :categories, :contract_types
  
#routes for the main models in the app
  
  match 'customer_contracts/:customer_id' => 'Contracts#index', :as => 'customer_contracts'
  match 'customer_details/:contract_id' => 'ContractDetails#index', :as => 'customer_details'
  match 'customer_contract_details/:contract_id' =>'ContractDetails#new', :as => 'new_details'
  resources :customers, :contracts, :contract_details
  
#routes for authentication
  resources :sessions, :users

  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/home',    :to => 'pages#home'
  match '/homeexec',    :to => 'pages#homeexec'
  match '/admin',   :to => 'pages#admin'
  match 'user/edit' => 'users#edit', :as => :edit_current_user
  match 'signup' => 'users#new', :as => :signup
  match 'logout' => 'sessions#destroy', :as => :logout
  match 'login' => 'sessions#new', :as => :login
  root :to => 'pages#home'
  
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
