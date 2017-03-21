class AddAttachmentImageToBoats < ActiveRecord::Migration
    def up
    add_attachment :boats, :image
  end

  def down
    remove_attachment :boats, :image
  end
end
