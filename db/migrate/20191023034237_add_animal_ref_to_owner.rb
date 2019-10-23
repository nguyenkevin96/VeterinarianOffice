class AddAnimalRefToOwner < ActiveRecord::Migration[6.0]
  def change
    add_reference :owners, :animal, null: true, foreign_key: true
  end
end
