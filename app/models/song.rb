class Song < ApplicationRecord
    validates :title, presence: true 
    validates :release_year, numericality: { less_than_or_equal_to: Date.today.year }
    validates :title, uniqueness: true
    
    validates :release_year, presence: true, if: :paid_with_card?

end
