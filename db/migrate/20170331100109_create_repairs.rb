class CreateRepairs < ActiveRecord::Migration[5.0]
  def change
    create_table :repairs do |t|
      t.string :cause
      t.integer :fees
      t.integer :equib_id
      t.string :method
      t.boolean :is_wireman, default: false
      t.timestamps
    end
  end
end
