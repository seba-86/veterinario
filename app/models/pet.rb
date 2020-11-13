class Pet < ApplicationRecord
  has_many :pet_histories

  def history_count
    pet_histories.count
  end

  def avg_weight
    pet_prom = pet_histories.pluck(:weight)
    pet_prom.sum / pet_prom.size
  end

  def avg_height
    pets_prom = pet_histories.pluck(:heigth)
    pets_prom.sum / pets_prom.size
  end

  def max_weight
    pet_histories.pluck(:weight).max
  end

  def max_height
    pet_histories.pluck(:heigth).max
  end

end
