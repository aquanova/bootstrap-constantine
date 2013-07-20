Verso::Application.routes.draw do

  resource :portfolio, only: [] do
    collection do
      get 'two_column'
      get 'three_column'
      get 'four_column'
      get 'single'
      get 'video'
      get 'alternative_slider'
    end
  end

  get 'pricing' => 'pricings#index'

  resources :pages, only: [] do
    collection do
      get 'about_us'
      get 'contact_us'
      get 'team'
      get 'features'
      get 'components'
      get 'sitemap'
      get 'error_404'
    end
  end

  resource :blog, only: [] do
    collection do
      get 'single'
      get 'category'
      get 'category_alternative'
      get 'pinterest'
    end
  end

  resource :admin, only: [] do
    collection do
      get 'sign_in'
      get 'dashboard'
      get 'tables'
      get 'elements'
      get 'media'
      get 'forms'
      get 'grid'
      get 'buttons'
      get 'notification'
      get 'calendar'
      get 'chat'
      get 'charts'
      get 'profile'
    end
  end

  root to: 'pages#home'

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
