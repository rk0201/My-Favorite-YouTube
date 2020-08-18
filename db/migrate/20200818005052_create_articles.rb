class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.text :title
      t.text :channnel_name
      t.text :content
      t.text :thumbnail
      t.integer :status
      t.datetime :start_time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
