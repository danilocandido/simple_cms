Rails.application.routes.draw do

  root 'demo#index'

  #Simple match route
  #get 'demo/index' 

  #Default Route, may go away in future rails versions
  #get ':controller(/:action(/:id))'
end
