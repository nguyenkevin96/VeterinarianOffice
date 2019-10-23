class CreateDateofinfections < ActiveRecord::Migration[6.0]
  def change
    create_table :dateofinfections do |t|
      t.datetime :dateofinfection
      t.references :animal, null: false, foreign_key: true
      t.references :disease, null: false, foreign_key: true

      t.timestamps
    end
  end
end
