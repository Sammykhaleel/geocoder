class CreateHealthcares < ActiveRecord::Migration
  def change
    create_table :healthcares do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :site

      t.timestamps
    end
  end
end
