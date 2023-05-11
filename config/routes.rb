Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  end

  post "/graphql", to: "graphql#execute"
  resources :maps, only: [:index, :show]
  resources :missions, only: [:index, :show, :create, :update]
  resources :operators, only: [:index, :show, :create]
  resources :vehicles, only: [:index, :show]
end