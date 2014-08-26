class Organization < ActiveRecord::Base
  def self.search(query)
    where("title ilike ?", "%#{query}%") 
  #  #client.keyword(params[:searchField]).per(5).search
  #  response.keyword(params[:"%#{query}%"]).per(5).search

  end

end