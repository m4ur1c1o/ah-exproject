class CreateMedicalHistories < ActiveRecord::Migration
  def change
    create_table :medical_histories do |t|
    	t.belongs_to :user
      t.timestamps null: false
    end
  end
end
