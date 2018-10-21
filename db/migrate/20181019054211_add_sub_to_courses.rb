class AddSubToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :subjectnum, :string
  end
end
