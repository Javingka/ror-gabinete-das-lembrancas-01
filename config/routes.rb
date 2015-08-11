Rails.application.routes.draw do
  root 'static_pages#home'

  resources :exhibits do
    collection do
      get 'creation'
    end
  end
  resources :gabinete_objects do
    collection do
      get 'creation'
    end
    member do
      get :acbeu
    end
  end
  resources :histories do
    collection do
      get 'creation'
    end
  end
  resources :photos do
    collection do
      get 'creation'
    end
  end

  resources :comments do
    collection do
      get 'creation'
    end
  end

  get 'static_pages/home'
  get 'static_pages/monos'
  get 'static_pages/show_exp'
  get 'static_pages/acbeu'
  match "/acbeu" => "static_pages#acbeu", via: :get

end
