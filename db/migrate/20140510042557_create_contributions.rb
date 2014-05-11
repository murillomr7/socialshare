class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.decimal :amount
      t.references :share_request, index: true
      t.references :member, index: true

      t.timestamps
    end
  end
end
