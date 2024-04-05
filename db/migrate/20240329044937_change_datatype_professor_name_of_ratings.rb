class ChangeDatatypeProfessorNameOfRatings < ActiveRecord::Migration[5.2]
  def change
    change_column :ratings, :professor_name, :string
  end
end
