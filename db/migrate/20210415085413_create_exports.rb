class CreateExports < ActiveRecord::Migration[6.0]
  def change
    create_table :exports do |t|

      t.timestamps
    end
  end
end
