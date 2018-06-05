class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :taggings do |t|
      t.belongs_to :tag, index: true
      t.references :taggable, polymorphic: true, index: true
    end
  end
end
