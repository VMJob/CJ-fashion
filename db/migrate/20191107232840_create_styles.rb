class CreateStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :styles do |t|
      t.text :message
      t.integer :user_id
      t.decimal :cost
      t.integer :page_id
      t.integer :selection
      t.integer :measurement
      t.timestamps
    end
    add_index :styles, :user_id
  end
end
