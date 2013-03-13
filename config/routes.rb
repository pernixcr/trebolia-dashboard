TreboliaDashboard::Application.routes.draw do

  get "facturas/list"
  post "facturas/list", to: "facturas#list", as: "facturas_por_ano"

  devise_for :users, :path => "auth", :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }
  root :to => "home#index"

end
