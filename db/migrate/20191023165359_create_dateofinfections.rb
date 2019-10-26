class CreateDateofinfections < ActiveRecord::Migration[6.0]
  def change
    create_table :dateofinfections do |t|
      t.datetime :dateofinfection
      t.references :animal, foreign_key: true
      t.references :disease, foreign_key: true

      t.timestamps
    end
  end
end
