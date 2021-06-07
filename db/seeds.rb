
# u1 = User.create username: 'Audrey', email: 'audrey@ga.com', :pin => '012345', :score => '0', password: 'chicken', host:true

# class CreateCohorts < ActiveRecord::Migration[5.2]
#   def change
#     create_table :cohorts do |t|
#       t.text :course
#       t.text :cohort_number
#       t.boolean :load
#
#       t.timestamps
#     end
#   end
# end
Cohort.destroy_all
cohort1 = Cohort.create :course => 'software engineer immersive', :cohort_number => 'SEI43', :load => 'true'
cohort2 = Cohort.create :course => 'UX designing', :cohort_number => 'UX45', :load => 'true'
puts "#{Cohort.count} cohorts created"


# class CreateUsers < ActiveRecord::Migration[5.2]
#   def change
#     create_table :users do |t|
#       t.text :name
#       t.text :email
#       t.string :password_digest
#       t.boolean :admin
#       t.text :image_url
#       t.text :linkedin_url
#       t.text :github_url
#       t.boolean :student_status
#       t.integer :cohort_id
#
#       t.timestamps
#     end
#   end
# end
User.destroy_all
user1 = User.create :name => "Bhavya Govind", :email => 'ba@ga.com', :password =>'chicken', :admin => true, :image_url => 'https://miro.medium.com/fit/c/1360/1360/0*6YrUAN2jxVKwGC_-.', :linkedin_url => 'www.linkedin.com', :github_url => 'www.github.com', :student_status => true, :cohort_id => '1'
user2 = User.create :name => "Katie Lugton", :email => 'ka@ga.com', :password =>'chicken', :admin => true, :image_url => 'https://miro.medium.com/fit/c/1360/1360/0*6YrUAN2jxVKwGC_-.', :linkedin_url => 'www.linkedin.com', :github_url => 'www.github.com', :student_status => true
user3 = User.create :name => "Priyanka", :email => 'pr@ga.com', :password =>'chicken', :admin => true, :image_url => 'https://miro.medium.com/fit/c/1360/1360/0*6YrUAN2jxVKwGC_-.', :linkedin_url => 'www.linkedin.com', :github_url => 'www.github.com', :student_status => true
user4 = User.create :name => "Audrey Patrecia", :email => 'ad@ga.com', :password =>'chicken', :admin => true, :image_url => 'https://miro.medium.com/fit/c/1360/1360/0*6YrUAN2jxVKwGC_-.', :linkedin_url => 'www.linkedin.com', :github_url => 'www.github.com', :student_status => true

puts "#{User.count} users created"


# class CreateTasks < ActiveRecord::Migration[5.2]
#   def change
#     create_table :tasks do |t|
#       t.text :name
#       t.text :due_date
#       t.integer :status
#       t.text :notes
#       t.text :task_url
#       t.integer :user_id
#
#       t.timestamps
#     end
#   end
# end


Task.destroy_all

task1 = Task.create :name => 'coffe day', :due_date => '1st jun', :status => '1', :notes => 'contacted ga alumni and waiting for response', :user_id => '2'
task2 = Task.create :name => 'coffe day', :due_date => '1st jun', :status => '1', :notes => 'contacted ga alumni and waiting for response', :user_id => '1'
task3 = Task.create :name => 'coffe day', :due_date => '1st jun', :status => '1', :notes => 'contacted ga alumni and waiting for response', :user_id => '3'
task4 = Task.create :name => 'coffe day', :due_date => '1st jun', :status => '1', :notes => 'contacted ga alumni and waiting for response', :user_id => '4'
puts "#{User.count} users created"



# class CreateJobtracker < ActiveRecord::Migration[5.2]
#   def change
#     create_table :jobtrackers do |t|
#       t.text :company_name
#       t.text :jd
#       t.text :date_applied
#       t.text :job_title
#       t.integer :status
#       t.text :job_notes
#       t.text :collateral
#       t.integer :user_id
#
#       t.timestamps
#     end
#   end
# end


Jobtracker.destroy_all

job1 = Jobtracker.create :company_name => 'Alpha', :jd => 'Need of junior developer but should work as most senior developer, and should work 24*7 tech stack: entire technology ,salary: should work for free', :job_title => 'Junior web developer', :status => '1', :job_notes => 'Moved to another round and asked me to build their project as assesment', :collateral => 'provided resume and cover letter url', :user_id => '1'

puts "#{Jobtracker.count} jobs created"
