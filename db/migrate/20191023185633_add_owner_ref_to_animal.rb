class AddOwnerRefToAnimal < ActiveRecord::Migration[6.0]
  def change
    add_reference :animals, :owner, null: false, foreign_key: true
  end
end
