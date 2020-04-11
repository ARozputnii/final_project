Rails.application.routes.draw do
  resources :category_users, only: [:edit, :update]
  root 'cabinets#show'
  resources :cabinets, only: :show
  resources :categories, only: :index
  devise_for :users, controllers: { :omniauth_callbacks => 'users/omniauth_callbacks'}
  scope '/admin' do
    resources :categories, controller: 'admin/categories', as: 'admin_categories'
  end
end
