class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
    	t.belongs_to :medical_history
    	t.string			:medicament
    	t.integer			:weight
    	t.integer			:dose
      t.timestamps null: false
    end
  end
end
