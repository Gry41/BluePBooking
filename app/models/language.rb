class Language < ApplicationRecord
    has_and_belongs_to_many :rents
    has_and_belongs_to_many :taxis
    has_and_belongs_to_many :tours
    
end
