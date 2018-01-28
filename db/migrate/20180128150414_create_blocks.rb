class CreateBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :blocks do |t|
      t.string :heading
      t.string :subheading
      t.text :body
      t.integer :order, null: false
      t.integer :role
      t.integer :style

      t.references :blockable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
