class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|
      t.string :work_area
      t.string :description
      t.integer :cost
      t.timestamps
    end
  end
end
