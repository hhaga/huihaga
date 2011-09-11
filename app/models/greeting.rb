class Greeting < ActiveRecord::Base
  validates_presence_of :body, :author
  
end
