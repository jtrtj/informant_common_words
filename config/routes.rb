Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'common_words', to: 'common_words#index' 
    end
  end
end
