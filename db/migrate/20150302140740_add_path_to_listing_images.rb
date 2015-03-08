class AddPathToListingImages < ActiveRecord::Migration
  def change
  	add_column :listing_images,:s3_path,:string
  end
end
