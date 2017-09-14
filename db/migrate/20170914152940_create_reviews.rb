class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.belongs_to :guest, :class_name => "User", index: true
      t.belongs_to :reservation
    end
  end
end
