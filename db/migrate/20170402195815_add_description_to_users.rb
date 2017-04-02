class AddDescriptionToUsers < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :description, :string
    User.find_each do |user|
      user.description = ['Sample description 1',
                          'Sample description 2',
                          'Sample description 3',
                          'Sample description 4',
                          'Sample description 5',
                          'Sample description 6'].sample
      user.save!
    end
  end

  def down
    remove_column :users, :description
  end
end
