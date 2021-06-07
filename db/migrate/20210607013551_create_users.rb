class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.string :password_digest
      t.boolean :admin
      t.text :image_url
      t.text :linkedin_url
      t.text :github_url
      t.boolean :student_status
      t.integer :cohort_id

      t.timestamps
    end
  end
end
