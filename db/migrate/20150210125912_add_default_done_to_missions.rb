class AddDefaultDoneToMissions < ActiveRecord::Migration
  def change
    change_table :missions do |t|
      t.change_default :done, false
    end
  end
end
