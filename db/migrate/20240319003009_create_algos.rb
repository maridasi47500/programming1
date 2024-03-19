class CreateAlgos < ActiveRecord::Migration[7.1]
  def change
    create_table :algos do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
