class AddUsersToUserLocations < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_locations, :user, null: false, foreign_key: true
  end
end
