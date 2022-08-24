Rails.application.routes.draw do
  get 'packing_strategys/index'
  get 'packing_strategy_hierarchys/index'
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

    resources :packing_strategy_hierarchys
    resources :packing_strategys
  end
end
