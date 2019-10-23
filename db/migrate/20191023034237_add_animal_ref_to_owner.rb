class AddAnimalRefToOwner < ActiveRecord::Migration[6.0]
  def change
    add_reference :owners, :animal, null: false, foreign_key: true
  end
end
