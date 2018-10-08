class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.string :description
      t.string :requirements

      t.timestamps
    end
  end
end
