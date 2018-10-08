class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :abbreviation
      t.string :idnum

      t.timestamps
    end
  end
end
