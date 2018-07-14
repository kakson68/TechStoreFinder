class Repair < ApplicationRecord
    has_many :solutions
    has_many :serviceproviders, through: :solutions
    belongs_to :serviceprovider
    belongs_to :user
end
