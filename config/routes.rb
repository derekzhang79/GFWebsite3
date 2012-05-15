GFWebsite3::Application.routes.draw do
  root :to => 'application#index'

  match 'test' => 'application#test'
  match 'about' => 'application#about'
  match 'about/team' => 'application#team'
  match 'about/location' => 'application#location'
  match 'portfolio' => 'application#portfolio'
  match 'portfolio/tai' => 'application#tai'
  match 'portfolio/nui' => 'application#nui'
  match 'portfolio/drexel_teacher_panel' => 'application#drexel_teacher_panel'
  match 'portfolio/parallax_site' => 'application#parallax_site'
  match 'portfolio/vt_surf_club' => 'application#vt_surf_club'
  match 'packages' => 'application#packages'
  match 'services' => 'application#services'
  match 'contact' => 'application#contact'

  match 'submit_contact' => 'application#submit_contact'

  match 'blog' => 'blog#index'
  match 'blog/view/:title' => 'blog#view'
  match 'blog/admin' => 'blog#login'
  match 'blog/admin/auth' => 'blog#auth'
  match 'blog/admin/list' => 'blog#list'
  match 'blog/admin/edit' => 'blog#edit'
  match 'blog/admin/update' => 'blog#update'
  match 'blog/admin/new' => 'blog#new'
  match 'blog/admin/destroy' => 'blog#destroy'
  match 'blog/admin/create' => 'blog#create'

  match 'tampa-qr' => 'application#packages'
  match 'email-qr' => 'application#packages'
  match 'blacksburg-qr' => 'application#packages'

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
