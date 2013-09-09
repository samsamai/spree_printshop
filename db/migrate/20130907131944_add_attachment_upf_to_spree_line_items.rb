class AddAttachmentUpfToSpreeLineItems < ActiveRecord::Migration
  def self.up
    change_table :spree_line_items do |t|
      t.attachment :upf
    end
  end

  def self.down
    drop_attached_file :spree_line_items, :upf
  end
end
