class Facility < ApplicationRecord
    include ActionView::Helpers::TextHelper
    has_and_belongs_to_many :rents
    
end

