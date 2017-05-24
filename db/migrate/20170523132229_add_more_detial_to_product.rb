class AddMoreDetialToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :Applicants, :text
    add_column :products, :teaching_objectives, :text
    add_column :products, :Course_Contents, :text
    add_column :products, :course_features, :text
    add_column :products, :curriculum, :text
    add_column :products, :Teacher_introduction , :text
    add_column :products, :class_schedule, :text
    add_column :products, :class_location, :string
    add_column :products, :service, :text
  end
end
