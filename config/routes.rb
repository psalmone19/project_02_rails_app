Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'songs#index', as: :home

  get 'songs'             =>    'songs#index'
  get 'songs/new'         =>    'songs#new', as: :new_song
  post 'songs'            =>    'songs#create'
  get 'songs/:id'         =>    'songs#show', as: :show_song
  get 'songs/:id/edit'    =>    'songs#edit', as: :edit_song
  patch 'songs/:id'       =>    'songs#update', as: :update_song
  delete 'songs/:id'      =>    'songs#destroy', as: :delete_song

  resources :songs
  # get 'teams/index'
  # get 'teams/new'
  # post 'teams/create'
  # get 'teams/:id'
  # get 'teams/:id/edit'
  # patch 'teams/:id'
  # delete 'teams/:id'

  get 'users'             =>    'users#index'
  get 'users/new'         =>    'users#new', as: :new_user
  post 'users/create'     =>    'users#create'
  get 'users/shows'       =>    'users#show', as: :user
  get 'users/:id/edit'    =>    'users#edit', as: :edit_user
  patch 'users/:id'       =>    'users#update', as: :update_user
  # delete 'users/:id'      =>    'users#destroy'

  devise_for :users




  # => 'teams#index', as: :index
  # => 'teams#new', as: :new_team
  # => 'teams#create'
  # => 'teams#show', as: :team
  # => 'teams#edit', as: :edit_team
  # => 'teams#update', as: :update_team
  # => 'teams#destroy', as: :delete_team




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
