class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :title

      t.belongs_to :user, null: false

      t.timestamps
    end
  end
end
