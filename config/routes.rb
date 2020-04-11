Rails.application.routes.draw do
  #devise_for :users
  root to: 'pages#dashboard'
  devise_for :users, controllers: { :omniauth_callbacks => 'users/omniauth_callbacks'}
  scope '/admin' do
    resources :categories, controller: 'admin/categories', as: 'admin_categories'
  end
end
