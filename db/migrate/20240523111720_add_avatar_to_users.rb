class AddAvatarToUsers < ActiveRecord::Migration[5.0]
  def change
    add_attachment :users, :file
  end
end
