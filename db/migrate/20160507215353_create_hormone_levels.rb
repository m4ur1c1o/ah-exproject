class CreateHormoneLevels < ActiveRecord::Migration
  def change
    create_table :hormone_levels do |t|

      t.timestamps null: false
    end
  end
end
