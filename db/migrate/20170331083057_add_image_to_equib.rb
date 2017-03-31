class AddImageToEquib < ActiveRecord::Migration[5.0]
  def change
    add_column :equibs, :image, :string
  end
end
