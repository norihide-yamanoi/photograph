Rails.application.routes.draw do
 resources :pictures do
   collection do
     post :confirm
   end
 end
 resources :users
 resources :sessions
 resources :favorites
 mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
