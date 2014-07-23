class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :domain_knowledge
      t.integer :technical_knowledge
      t.integer :verbal
      t.integer :written
      t.integer :leadership
      t.integer :ownership
      t.integer :responsiveness
      t.integer :presentation
      t.integer :involvement_in_discussions
      t.integer :assertiveness
      t.integer :discipline
      t.integer :month
      t.integer :year
      t.integer :employee_id

      t.timestamps
    end
  end
end
