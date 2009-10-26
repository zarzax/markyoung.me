class StaticController < ApplicationController
  
  def home
    @projects = Project.find_featured_projects
  end
  
  def about
    @projects = Project.find_featured_projects
  end
  
end
