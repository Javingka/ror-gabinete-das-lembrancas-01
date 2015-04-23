Rails.application.routes.draw do
  resources :photos
  resources :gabinete_objects
  resources :exhibits
  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/monos'

end
