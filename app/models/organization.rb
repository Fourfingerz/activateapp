class Organization < ActiveRecord::Base
  def self.search(query)
    where("title ilike ?", "%#{query}%") 
  end

  create_table :Organization do |t|
  	t.column :title, :string
  end

end