class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.datetime :start_time
      t.string :description
      t.string :url
      t.float :latitude
      t.float :longitude
      t.references :category
      t.string :address
      t.string :status

      t.timestamps
    end
  end
end
