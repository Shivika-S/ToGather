class CreateScrapingActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :scraping_activities do |t|
      t.string :site
      t.string :json

      t.timestamps
    end
  end
end
