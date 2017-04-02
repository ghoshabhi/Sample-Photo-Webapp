class AddDateTimeToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :date_time, :date
  end
end
