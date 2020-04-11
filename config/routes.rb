Rails.application.routes.draw do
  root 'cabinets#show'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}

  resources :category_users, only: [:edit, :update]
  resources :cabinets, only: :show
  resources :categories, only: :index
  resources :posts, only: [:index, :show]
  get 'render_posts', to: "posts#render_form", as: 'render_posts'
  post 'send_link', to: 'posts#parse_link', as: 'send_link'

  scope '/admin' do
    resources :categories, controller: 'admin/categories', as: 'admin_categories'
  end
end
