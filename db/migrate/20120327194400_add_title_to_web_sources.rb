class AddTitleToWebSources < ActiveRecord::Migration
  def change
    add_column :web_sources, :title, :string, :limit=>15

  end
end
