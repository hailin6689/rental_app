class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :source_id
      t.integer :pagedata_id
      t.string :url, :limit=>200
      t.string :title, :limit=>100
      t.string :city, :limit=>20
      t.string :district, :limit=>45
      t.string :address, :limit=>100
      t.string :house_type, :limit=>15
      t.string :rent_type, :limit=>15
      t.string :area, :limit=>10
      t.integer :occupancy
      t.string :price_day, :limit=>10
      t.float :special_price
      t.float :special_date
      t.integer :bed_rooms
      t.integer :room_num
      t.integer :beds
      t.string :bed_type, :limit=>10
      t.integer :bathrooms
      t.integer :invoice
      t.string :facilities, :limit=>500
      t.integer :verify
      t.string :images, :limit=>200
      t.string :images_key, :limit=>100
      t.integer :flag
      t.timestamps
      t.float :lat
      t.float :lng
      t.float :bdlat
      t.float :bdlng

    end
  end
end
