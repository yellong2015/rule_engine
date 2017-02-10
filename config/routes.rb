Rails.application.routes.draw do
  resources :tasks
  resources :tests do
    member do
      post "into_rule_engine"
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rule_sets

  resources :results
end
