class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.datetime :time_occur
      t.decimal :latitude
      t.decimal :longitude
      t.string :location
      t.string :tags
      t.text :description
      t.string :user

      t.timestamps
    end
  end
end
