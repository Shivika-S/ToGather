class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :start_time
      t.string :description
      t.string :url
      t.float :lat
      t.float :lng
      t.references :category
      t.string :address
      t.string :status

      t.timestamps
    end
  end
end
