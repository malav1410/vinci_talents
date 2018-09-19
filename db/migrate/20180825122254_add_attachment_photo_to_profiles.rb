class AddAttachmentPhotoToProfiles < ActiveRecord::Migration
  def self.up
    change_table :profiles do |t|
      t.attachment :photo_1
      t.attachment :photo_2
      t.attachment :photo_3
      t.attachment :photo_4
      t.attachment :photo_5
      t.attachment :photo_6
      t.attachment :video_1
      t.attachment :video_2
    end
  end

  def self.down
    remove_attachment :profiles, :photo_1
    remove_attachment :profiles, :photo_2
    remove_attachment :profiles, :photo_3
    remove_attachment :profiles, :photo_4
    remove_attachment :profiles, :photo_5
    remove_attachment :profiles, :photo_6
    remove_attachment :profiles, :video_1
    remove_attachment :profiles, :video_2
  end
end
