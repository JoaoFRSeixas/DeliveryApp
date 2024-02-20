class CreateQueries < ActiveRecord::Migration[7.0]
  def change
    create_table :queries do |t|
      t.string :currency_code
      t.date :start
      t.date :end
      t.integer :slot_size

      t.timestamps
    end
  end
end
