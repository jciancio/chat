class CreateMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :missions do |t|
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
