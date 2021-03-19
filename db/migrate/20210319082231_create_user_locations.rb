class CreateUserLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :user_locations do |t|
      t.string :city
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
