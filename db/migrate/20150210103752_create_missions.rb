class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.string :description
      t.boolean :done

      t.timestamps null: false
    end
  end
end
