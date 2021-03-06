Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #welcome Routes
  root 'welcome#index'
  get '/about' =>  'welcome#about'
  get '/search' => 'welcome#search'

  get '/users' => 'users#index'
  get '/signup' => 'users#new'
  post '/users'  => 'users#create'
  get '/log_in'  => 'users#log_in'


  get '/users/profile' => 'users#profile', as: :user_profile

  post '/users/profile' => 'users#profile'

 get '/users/:id/edit' => 'users#edit'
 put '/users/:id' => 'users#update', as: :user_update

 delete 'users/:id' => 'users#destroy'

  #session Routes
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy', as: :log_out

  #Favorite routes
  post '/favorites' => 'favorites#create'
  delete 'favorites/:id' => 'favorites#destroy'

  #song routes
  get '/songs' => 'songs#index'
  get '/songs/api' => 'movies#songsapi'

  #movie Routes
  get '/movies' => 'movies#index'
  get 'movies/api' => 'movies#api'
  get '/json' => 'movies#show'
  post '/json' => 'movies#show'


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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
