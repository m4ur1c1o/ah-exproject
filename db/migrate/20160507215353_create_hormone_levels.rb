class CreateHormoneLevels < ActiveRecord::Migration
  def change
    create_table :hormone_levels do |t|
    	t.belongs_to :study
    	t.integer			:level 
    	t.integer			:min
    	t.integer			:max
      t.timestamps null: false
    end
  end
end
