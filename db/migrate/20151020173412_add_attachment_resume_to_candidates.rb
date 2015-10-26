class AddAttachmentResumeToCandidates < ActiveRecord::Migration
  def self.up
    change_table :candidates do |t|
      t.attachment :resume
    end
  end

  def self.down
    remove_attachment :candidates, :resume
  end
end
