class CreateScripts < ActiveRecord::Migration[7.1]
  def change
    create_table :scripts do |t|
      t.integer :programminglanguage_id
      t.integer :mypart_id
      t.string :filename

      t.timestamps
    end
  end
end
