class CreateWebSources < ActiveRecord::Migration
  def change
    create_table :web_sources do |t|
      t.string :name, :limit=>20
      t.string :code, :limit=>15
      t.string :url, :limit=>100
      t.string :logo, :limit=>40
      t.text :desc
      t.string :xpath_price, :limit=>100
      t.string :contact_name, :limit=>45
      t.string :contact_tel, :limit=>45
      t.string :contact_400, :limit=>20
      t.string :mobile, :limit=>45
      t.string :address, :limit=>100
      t.timestamps
      t.string :qq, :limit=>45
      t.string :msn, :limit=>45
      t.string :email, :limit=>100

    end
  end
end
