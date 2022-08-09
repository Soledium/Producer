class CreateConcerts < ActiveRecord::Migration[7.0]
  def change
    create_table :concerts do |t|
      t.datetime :date
      t.integer :assistants
      t.string :place
      t.integer :duration
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
