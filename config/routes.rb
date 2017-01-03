Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  resources :businesses
  get '/search' => 'businesses#search', :as => 'search'
  
  # Static Pages
  get 'business/buy' => 'static_pages#buy'
  get 'business/sell' => 'static_pages#sell'
  
  get 'services/buyers' => 'static_pages#buyers'
  get 'services/sellers' => 'static_pages#sellers'
  get 'services/investors' => 'static_pages#investors'

  get 'help/value' => 'static_pages#value'
  get 'help/legal' => 'static_pages#legal'
  get 'help/financing' => 'static_pages#financing'
  

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
