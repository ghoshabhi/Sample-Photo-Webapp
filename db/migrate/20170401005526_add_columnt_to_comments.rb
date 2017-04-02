class AddColumntToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :comment_text, :string
  end
end
