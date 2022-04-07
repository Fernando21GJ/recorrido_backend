class AddFieldToServicios < ActiveRecord::Migration[7.0]
  def change
    add_column :servicios, :completed, :boolean
  end
end
