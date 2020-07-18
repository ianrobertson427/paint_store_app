class CreatePaints < ActiveRecord::Migration[6.0]
  def change
    create_table :paints do |t|
      t.string :sheen
      t.string :quality
      t.string :brand

      t.timestamps
    end
  end
end
