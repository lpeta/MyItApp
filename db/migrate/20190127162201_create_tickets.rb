class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :summary
      t.text :description

      t.timestamps
    end
  end
end
