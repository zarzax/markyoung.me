class Project < ActiveRecord::Base
  acts_as_taggable_on :tags, :languages
  
  validates_presence_of :title, :teaser, 
                        :body, :icon_url
  validates_uniqueness_of :title
  validates_format_of :image_url,
                      :with => %r{\.(gif|jpg|png)$}i,
                      :message  => 'must be a URL 
                            for GIF, JPG, or PNG image.'
  
  
  def self.find_projects
    find(:all, :order => 'title')
  end
  
  def self.find_tags
    language_counts + tag_counts
  end
  
  # def to_param
  #   "#{id}-#{permalink}"
  # end
  
end
