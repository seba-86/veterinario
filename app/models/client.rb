class Client < ApplicationRecord
    has_many :pets, dependent: :destroy

    def pets_registration
        pets.count
    end

    def max_weight
        pets.pet_histories.pluck(:weight).max
    end
    
    def max_height
        pets.pet_histories.pluck(:heigth).max
    end
    
end