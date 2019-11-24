class AddDetailsToMeasurement < ActiveRecord::Migration[5.2]
  def change
  	add_column :measurements, :waist, :float
  	add_column :measurements, :length, :float
  	add_column :measurements, :sleeve, :float
  end
end
