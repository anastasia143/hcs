Hcs::Application.routes.draw do
 
   get "welcome/index"
  root "welcome#index"
   resources :users
   resources :units
   resources :tasks
   resources :students
   resources :contacts
end