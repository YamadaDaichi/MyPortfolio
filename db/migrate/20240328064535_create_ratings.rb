class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.text :subject_name
      t.text :class_type
      t.text :faculty
      t.text :professor_name
      t.text :body
      t.text :exam_content
      t.text :nickname
      t.integer :user_id

      t.timestamps
    end
  end
end
