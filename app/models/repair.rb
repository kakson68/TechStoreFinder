class Repair < ApplicationRecord
    has_many :solutions
    has_many :serviceproviders, through: :solutions
    belongs_to :serviceprovider
    belongs_to :user
    
     #implementing the Search method in the  Model
    #def self.search(search)
      #  if search
       #  where('location LIKE ? OR descrition LIKE ? OR fault LIKE ? OR job_number LIKE?', "%#{search}%", "%#{search}%","%#{search}%", "%#{search}%")
        #else
        
       # all
      #  end
   # end
   
   
   
def self.search(search)
    if search
	where('Fault LIKE ? OR descrition LIKE ? OR location LIKE ? OR job_number LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%").order('id DESC')
	else
	order('id DESC')
    end
end


    
end  #end class Repair do not delete













