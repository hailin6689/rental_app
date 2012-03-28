class AddDigestToWebSources < ActiveRecord::Migration
  def change
    add_column :web_sources, :digest, :string, :limit=>35

  end
end
