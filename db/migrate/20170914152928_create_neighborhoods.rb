class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.belongs_to :city, index: true
    end
  end
end
