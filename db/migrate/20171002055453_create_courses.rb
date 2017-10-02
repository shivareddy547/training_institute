class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :image
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
