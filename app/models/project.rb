class Project < ActiveRecord::Base
  acts_as_taggable_on :tags, :languages
  
  
  def self.find_projects
    find(:all, :order => 'title')
  end

end
