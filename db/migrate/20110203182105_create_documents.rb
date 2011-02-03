class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.date :date_at
      t.string :memo
      t.string :attachment_file_name
      t.string :attachment_content_type
      t.string :attachment_file_size
      t.string :attachment_fingerprint
      t.datetime :attachment_updated_at
      t.timestamps

      t.index :date_at
    end
  end

  def self.down
    drop_table :documents
  end
end
