class CreateProgramminglanguages < ActiveRecord::Migration[7.1]
  def change
    create_table :programminglanguages do |t|
      t.string :name

      t.timestamps
    end
  end
end
