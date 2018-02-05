class AddAttachmentsToImageRecords < ActiveRecord::Migration[5.1]
  def up
    add_attachment :images, :attachment
  end

  def down
    remove_attachment :images, :attachment
  end
end
