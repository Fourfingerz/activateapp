class Organization < ActiveRecord::Base
  def self.search(query)
    where("title ilike ?", "%#{query}%") 
  end
end