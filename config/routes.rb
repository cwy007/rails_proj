Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'

  # 鹿享家称重接口
  namespace :api, defaults: { format: :json } do
    resources :scales do
      collection do
        get 'list' => 'scales#index'
        post 'weight' => 'scales#weight'
      end
    end
  end
end
