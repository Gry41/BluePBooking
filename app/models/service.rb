class Service < ApplicationRecord
    has_and_belongs_to_many :rents
end
