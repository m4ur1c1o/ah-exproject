class CreateHistorySymptoms < ActiveRecord::Migration
  def change
    create_table :history_symptoms do |t|
    	t.belongs_to :symptom
    	t.belongs_to :medical_history
    	t.datetime	 :date
    	t.timestamps null: false
    end
  end
end
