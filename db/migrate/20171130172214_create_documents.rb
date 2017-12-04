class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.string :name
      t.references :folder, foreign_key: true

      t.timestamps
    end
  end
end
