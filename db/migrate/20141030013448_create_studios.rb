class CreateStudios < ActiveRecord::Migration
  def change
    create_table :studios do |t|
      t.string :title
      t.string :speciality
      t.string :url

      t.timestamps
    end
  end
end
