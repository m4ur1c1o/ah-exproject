class CreateHormones < ActiveRecord::Migration
  def change
    create_table :hormones do |t|
    	t.belongs_to :hormone_level
    	t.string :name
    	t.string :abbreviation
    	t.string :unit
      t.timestamps null: false
    end
  end
end
