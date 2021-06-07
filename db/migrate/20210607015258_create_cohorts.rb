class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.text :course
      t.text :cohort_number
      t.boolean :load
    end
  end
end
