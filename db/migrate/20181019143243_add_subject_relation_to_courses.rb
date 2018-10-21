class AddSubjectRelationToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :subject_id, :integer
  end
end
