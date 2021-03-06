class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.string :listing_type
      t.string :title
      t.text :description
      t.float :price
      t.belongs_to :neighborhood, index: true
      t.belongs_to :host, :class_name => "User", index: true
    end
  end
end
