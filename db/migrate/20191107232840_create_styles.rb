class CreateStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :styles do |t|
      t.text :message
      t.integer :user_id
      t.decimal :cost
      t.integer :page_id
      t.integer :selection_id
      t.timestamps
    end
    add_index :styles, [:user_id, :page_id]
    add_index :styles, :page_id 
  end
end
