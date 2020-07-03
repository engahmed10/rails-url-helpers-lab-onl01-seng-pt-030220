Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :students, only: [:index, :show]
 get "students/:id/activity", to: "students#activity" , as: "activate_student"

 ### get "students/:id/active", to: "students#active" , as: "activate_student"  #if like this then change  cotroller method to active

end
