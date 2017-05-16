Rails.application.routes.draw do
 

  get 'place/mul_front'

  get 'place/parking_lot'

  get 'place/engineering_front'

  devise_for :users

  root 'festival#index'
  
  get '/festival/index' => 'festival#index'
  get '/festival/day22' => 'festival#day22'
  get '/festival/day23' => 'festival#day23'
  get '/festival/day24' => 'festival#day24'
  get '/festival/day25' => 'festival#day25'
  get '/festival/day26' => 'festival#day26'
  get '/festival/write' => 'festival#write'
  get '/festival/info' => 'festival#info'
  get '/festival/mul_front' => 'festival#mul_front'
  get '/festival/parking_lot' =>'festival#parking_lot'
  get '/festival/engineering_front' =>'festival#engineering_front'
  get '/festival/sns'
  get '/club/write' => 'club#club_write'
  get '/club/edit/:univ_id/:club_id' => 'club#club_edit'
  post '/club/create' => 'club#club_create'
  post '/club/update/:club_id' => 'club#club_update'
  get '/club/destroy/:univ_id/:club_id' => 'club#club_destroy'
  get '/menuwrite/:univ_id/:club_id' => 'club#menu_write'
  post '/menucreate' => 'club#menu_create'
  get '/menuedit/:univ_id/:club_id' => 'club#menu_edit'
  get '/menudestroy/:univ_id/:club_id/:menu_id' => 'club#menu_destroy'
  
  get '/sns/main' => 'sns#main'
  post 'sns/create'
  get '/sns/destroy/:comment_id' => 'sns#destroy'

  
  get '/bar/:day/:univ_id' => 'bar#showBar'
  
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
