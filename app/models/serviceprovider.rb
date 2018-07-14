class Serviceprovider < ApplicationRecord
    has_many :solutions
    has_many :repairs, through: :solutions
    
end
