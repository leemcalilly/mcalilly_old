Mcalilly::Application.routes.draw do

  root 'public#home'

  get "resume" => "public#resume", :as => "resume"
  get "timeline" => "public#timeline", :as => "timeline"
  get "music" => "public#music", :as => "music"
end
