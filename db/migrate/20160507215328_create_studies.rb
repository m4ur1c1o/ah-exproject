class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
    	t.belongs_to :medical_history
      t.timestamps null: false
    end
  end
end
