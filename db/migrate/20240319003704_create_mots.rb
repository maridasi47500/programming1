class CreateMots < ActiveRecord::Migration[7.1]
  def change
    create_table :mots do |t|
      t.integer :mypart_id
      t.string :mot
      t.string :description

      t.timestamps
    end
  end
end
