class CreateJobtracker < ActiveRecord::Migration[5.2]
  def change
    create_table :jobtrackers do |t|
      t.text :company_name
      t.text :jd
      t.text :date_applied
      t.text :job_title
      t.integer :status
      t.text :job_notes
      t.text :collateral
      t.integer :user_id
    end
  end
end
