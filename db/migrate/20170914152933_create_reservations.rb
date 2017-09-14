class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :checkin
      t.datetime :checkout
      t.belongs_to :listing, index: true
      t.belongs_to :guest, :class_name => "User", index: true
    end
  end
end
