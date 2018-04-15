class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.belongs_to :user, index: true
      t.belongs_to :organization, index: true

      t.integer :role, null: false, default: 1

      t.timestamps
    end
  end
end
