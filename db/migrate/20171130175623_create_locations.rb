class CreateLocations < ActiveRecord::Migration[5.1]
  def up
    create_table :locations do |t|
      t.string :name

      t.timestamps
    end

    create_table :locations_users do |t|
      t.belongs_to :location, :index => true
      t.belongs_to :user, :index => true
    end
  end

  def down
    drop_table :locations
    drop_table :locations_users
  end
end
