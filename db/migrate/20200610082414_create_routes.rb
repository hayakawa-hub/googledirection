class CreateRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :routes do |t|
      t.string :depature_place
      t.string :destination_place
      t.string :transition_method

      t.timestamps
    end
  end
end
