class CreateShareRequests < ActiveRecord::Migration
  def change
    create_table :share_requests do |t|
      t.string :title
      t.datetime :eventDate
      t.text :description
      t.references :member, index: true

      t.timestamps
    end
  end
end
