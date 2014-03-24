class PublicController < ApplicationController
  layout "resume", only: [:resume]
  
  def index
  end

  def resume
  end
end