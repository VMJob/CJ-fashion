class CreateSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :selections do |t|
      t.string :type
      t.timestamps
    end
  end
end
