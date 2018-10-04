class CreateInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :instructors do |t|
      t.string :middle
      t.string :last
      t.string :first
      t.string :email
      t.string :idnum

      t.timestamps
    end
  end
end
