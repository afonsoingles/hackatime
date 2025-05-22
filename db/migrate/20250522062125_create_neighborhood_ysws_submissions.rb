class CreateNeighborhoodYswsSubmissions < ActiveRecord::Migration[8.0]
  def change
    create_table :neighborhood_ysws_submissions do |t|
      t.string :airtable_id, null: false
      t.index :airtable_id, unique: true
      t.jsonb :airtable_fields

      t.timestamps
    end
  end
end
