class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.integer :bitcoin_id
      t.string :gcpicture

      t.timestamps
    end
  end
end
