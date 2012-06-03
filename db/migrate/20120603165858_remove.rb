class Remove < ActiveRecord::Migration
  def up
    drop_table :announces
  end

  def down
  end
end
