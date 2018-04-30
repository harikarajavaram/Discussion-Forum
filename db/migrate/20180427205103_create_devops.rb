class CreateDevops < ActiveRecord::Migration[5.0]
  def change
    create_table :devops do |t|
      t.string :title
      t.text :content
      t.boolean :published

      t.timestamps
    end
  end
end
