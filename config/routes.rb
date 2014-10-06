Rails.application.routes.draw do

  root to: 'welcome#index'

  match '/404', via: :all, to: 'errors#not_found'
  match '/422', via: :all, to: 'errors#unprocessable_entity'
  match '/500', via: :all, to: 'errors#server_error'

  resources :articles do
    resources :comments
  end

  resources :departments do
    resources :employees
  end



end
