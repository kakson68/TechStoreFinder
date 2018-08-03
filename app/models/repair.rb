class Repair < ApplicationRecord
    has_many :solutions
    has_many :serviceproviders, through: :solutions
    belongs_to :serviceprovider
    belongs_to :user
    
   #added now 
def self.search(term)
	if term
		where('name LIKE ?', "%#{term}%")
	else
	all
	end
end
    
  #end here  
    
end
