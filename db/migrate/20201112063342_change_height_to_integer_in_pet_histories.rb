class ChangeHeightToIntegerInPetHistories < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir| 
      change_table :pet_histories do |t|
        dir.up { t.change :heigth, :integer }
        dir.down { t.change :heigth, :string } 
      end
    end
  end
end
