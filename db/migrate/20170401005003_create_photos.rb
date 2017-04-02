class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.date :date_time
      t.string :file_name

      t.timestamps
    end
  end
end
