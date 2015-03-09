class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :choice

      t.timestamps null: false
    end
  end
end

