class CreateEquibs < ActiveRecord::Migration[5.0]
  def change
    create_table :equibs do |t|
      t.string :title,default: nil
      t.string :department,default: nil
      t.string :position, default:nil
      t.string :principal,default:nil
      t.date :purchase_date,default: nil
      t.boolean :is_for_production,default: true
      t.string :use_state,default: nil
      t.string :origin,default: nil
      t.string :model,default: nil
      t.string :supplier,default: nil
      t.integer :warranty,default: nil
      t.text :description,default: nil
      t.integer :price ,default: nil
      t.integer :age_limit ,default: nil
      t.timestamps
    end
  end
end
