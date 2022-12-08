class CreateRssLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :rss_links do |t|
      t.text :url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
