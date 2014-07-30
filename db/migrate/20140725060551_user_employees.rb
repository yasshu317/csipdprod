class UserEmployees < ActiveRecord::Migration
  def change
    create_table :user_employees do |t|
      t.integer :user_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
