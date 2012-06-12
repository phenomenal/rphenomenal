Rphenomenal::Application.routes.draw do
  root :to=> "Pages#home"
  match "/project", :to => "Pages#project"
  match "/api", :to => "Pages#api"
  match "/introspection", :to => "Pages#introspection"
  resource :newsletters
  resource :application_states
end
