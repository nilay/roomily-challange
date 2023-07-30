class CreateIncidents < ActiveRecord::Migration[7.0]
  def change
    create_table :incidents do |t|
      t.references :creator, foreign_key: {to_table: 'users'}, null: false
      t.string :title, null: false
      t.text :description
      t.integer :severity
      t.datetime :resolved_at
      t.json :slack_response
      t.timestamps
    end
  end
end
