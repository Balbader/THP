class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :gossip_author
      t.string :gossip_content

      t.timestamps
    end
  end
end
