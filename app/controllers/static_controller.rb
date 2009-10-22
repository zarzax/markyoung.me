class StaticController < ApplicationController
  
  def home
    @projects = Project.find_featured_projects
  end
  
  def about
  end
  
end
