class AddValueToShareRequest < ActiveRecord::Migration
  def change
    add_column :share_requests, :value, :decimal
  end
end
