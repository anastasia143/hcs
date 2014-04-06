Hcs::Application.routes.draw do
 
   get "welcome/index"
  root "welcome#index"
   resources :contacts
   resources :students
end