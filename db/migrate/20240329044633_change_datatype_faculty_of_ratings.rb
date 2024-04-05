class ChangeDatatypeFacultyOfRatings < ActiveRecord::Migration[5.2]
  def change
    change_column :ratings, :faculty, :string
  end
end
