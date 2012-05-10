Rphenomenal::Application.routes.draw do
  root :to=> "Pages#home"
  match "/project", :to => "Pages#project"
  match "/documentation", :to => "Pages#documentation"
  match "/introspection", :to => "Pages#introspection"
  resource :newsletters
  resource :application_states
end
