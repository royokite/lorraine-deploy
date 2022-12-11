class AlterSchedulesTableColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :schedules, :sched_id
    rename_column :schedules, :ins_id, :instructor_id 
    rename_column :schedules, :sub_id, :subject_id 
    rename_column :schedules, :stud_id, :student_id 
  end
end
