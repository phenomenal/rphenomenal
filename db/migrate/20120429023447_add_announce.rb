class AddAnnounce < ActiveRecord::Migration
  def change
    create_table :announces do |t|
      t.datetime :datetime
      t.text :content

      t.timestamps
    end
  end
end
