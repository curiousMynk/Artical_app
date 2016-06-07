class Artical < ActiveRecord::Base
  validates_presence_of :body, :title
  
end
