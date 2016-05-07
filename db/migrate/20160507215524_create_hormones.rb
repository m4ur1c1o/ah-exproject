class CreateHormones < ActiveRecord::Migration
  def change
    create_table :hormones do |t|

      t.timestamps null: false
    end
  end
end
