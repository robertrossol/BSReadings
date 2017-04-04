class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.date :date
      t.time :time
      t.integer :bs

      t.timestamps
    end
  end
end
