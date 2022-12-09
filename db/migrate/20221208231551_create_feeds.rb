class CreateFeeds < ActiveRecord::Migration[7.0]
  def change
    create_table :feeds do |t|
      t.text :link
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
