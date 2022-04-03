class CreateServicios < ActiveRecord::Migration[7.0]
  def change
    create_table :servicios do |t|
      t.text :tipo_servicio

      t.timestamps
    end
  end
end
