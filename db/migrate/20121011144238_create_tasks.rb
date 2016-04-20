class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      # Completa con las columnas que necesites
      t.column :text, :string
      t.column :status, :boolean, :default => false

    end
  end
end
