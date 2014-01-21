Mcalilly::Application.routes.draw do
  
  root 'public#home'

  get "resume" => "public#resume", :as => "resume"
end
