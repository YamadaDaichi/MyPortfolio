class ChangeDatatypeSubjectNameOfRatings < ActiveRecord::Migration[5.2]
  def change
    change_column :ratings, :subject_name, :string
  end
end
