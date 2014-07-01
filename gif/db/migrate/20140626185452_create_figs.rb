class CreateFigs < ActiveRecord::Migration
  def change
    create_table :figs do |t|
      t.string :url
      t.string :caption

      t.timestamps
    end
  end
end
