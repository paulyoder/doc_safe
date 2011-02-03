class CreateReceipts < ActiveRecord::Migration
  def self.up
    create_table :receipts do |t|
      t.date :date_at
      t.string :payee
      t.string :memo
      t.decimal :amount, :precision => 15, :scale => 2
      t.string :attachment_file_name
      t.string :attachment_content_type
      t.string :attachment_file_size
      t.string :attachment_fingerprint
      t.datetime :attachment_updated_at
      t.timestamps

      t.index :date_at
      t.index :payee
    end
  end

  def self.down
    drop_table :receipts
  end
end
