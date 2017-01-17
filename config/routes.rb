Rails.application.routes.draw do
  get 'welcome/index'

  post 'contact', to: "contacts#create", as: "create_contact"

  root "welcome#index"
end
