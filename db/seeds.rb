Cohort.destroy_all
c1 = Cohort.create :course => 'Software Engineer Immersive', :cohort_number => 'SEI43', :load => 'true'
c2 = Cohort.create :course => 'User Experience Design', :cohort_number => 'UX45', :load => 'true'
c3 = Cohort.create :course => 'Software Engineer Immersive', :cohort_number => 'SEI42', :load => 'true'
c4 = Cohort.create :course => 'User Experience Design', :cohort_number => 'UX44', :load => 'true'
c5 = Cohort.create :course => 'Software Engineer Immersive', :cohort_number => 'SEI41', :load => 'true'
c6 = Cohort.create :course => 'User Experience Design', :cohort_number => 'UX43', :load => 'true'
puts "#{Cohort.count} cohorts created"


User.destroy_all
u1 = User.create :name => "Shayaan Malik", :email => 'sm@ga.com', :password =>'chicken', :admin => true, :image_url => 'https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/20583/thumb_Staff_Shae_2.jpg', :linkedin_url => 'https://www.linkedin.com/in/shayaanmalik/', :github_url => 'None', :student_status => false

u2 = User.create :name => "Bhavya Govind", :email => 'bg@ga.com', :password =>'chicken', :admin => false, :image_url => 'https://media-exp3.licdn.com/dms/image/C5603AQFUAcb4lqCudw/profile-displayphoto-shrink_400_400/0/1619404466462?e=1628726400&v=beta&t=ckpJV-HcsanHk471NLJqOYbzRbrX3IgXa6qnl9Xkl5A', :linkedin_url => 'https://www.linkedin.com/in/bhavyagovind/', :github_url => 'https://github.com/BhavyaGovind', :student_status => true

u3 = User.create :name => "Katie Lugton", :email => 'kl@ga.com', :password =>'chicken', :admin => false, :image_url => 'https://media-exp3.licdn.com/dms/image/C5603AQEHH_w6EW22Hg/profile-displayphoto-shrink_400_400/0/1619518441119?e=1628726400&v=beta&t=SZ1-ZMIg7q1LbDE5AJq4P8CBnVHYoaZGCmkVUjt2mGw', :linkedin_url => 'https://www.linkedin.com/in/katielugton/', :github_url => 'https://github.com/KatieZoe', :student_status => true

u4 = User.create :name => "Priyanka Patel", :email => 'pp@ga.com', :password =>'chicken', :admin => false, :image_url => 'https://media-exp3.licdn.com/dms/image/C5603AQGEUbac0Z6oyg/profile-displayphoto-shrink_400_400/0/1619646104370?e=1628726400&v=beta&t=Ev20whcFJn1JvUxcPrgLNQkFH40Io4SC-DcuxBl6hhU', :linkedin_url => 'https://www.linkedin.com/in/patelpriyanka2512/', :github_url => 'https://github.com/Priyanka-1412', :student_status => true

u5 = User.create :name => "Audrey Patricia", :email => 'ap@ga.com', :password =>'chicken', :admin => false, :image_url => 'https://media-exp3.licdn.com/dms/image/C5603AQFXRX5Hdts8AA/profile-displayphoto-shrink_400_400/0/1620013270198?e=1628726400&v=beta&t=Rm6tbEhmDBnxkhgiEGzmPD2IruPT5XH1spT6xHYqwbc', :linkedin_url => 'https://www.linkedin.com/in/audrey-patricia/', :github_url => 'https://github.com/audreypatricia', :student_status => true

u6 = User.create :name => "Faith Sylvia", :email => 'fs@ga.com', :password =>'chicken', :admin => false, :image_url =>  'https://media-exp3.licdn.com/dms/image/C5635AQEIomSim5lBcA/profile-framedphoto-shrink_400_400/0/1619558778770?e=1623304800&v=beta&t=dcZcefHjjW4V7IsOqDjmdyAIebPcaAJXgopCqybdsps', :linkedin_url => 'https://www.linkedin.com/in/faithsylvia/', :github_url => 'https://github.com/faithsylvia1', :student_status => true


u7 = User.create :name => "Audrey Patrecia", :email => 'ad@ga.com', :password =>'chicken', :admin => false, :image_url => 'https://miro.medium.com/fit/c/1360/1360/0*6YrUAN2jxVKwGC_-.', :linkedin_url => 'www.linkedin.com', :github_url => 'www.github.com', :student_status => true

#Admin login for Mai
u8 = User.create :name => "Mai Nguyen", :email => 'mn@ga.com', :password =>'chicken', :admin => true, :image_url => 'https://media-exp3.licdn.com/dms/image/C5603AQGBZKqmeS7ryQ/profile-displayphoto-shrink_400_400/0/1614561502632?e=1628726400&v=beta&t=OpXraLNd-_4hmHfsdgFVOAAKszPH6TP902ROSkS1j4s', :linkedin_url => 'https://www.linkedin.com/in/chi-mai-nguyenn/', :github_url => 'https://github.com/little-chi-mai', :student_status => false

# student login for Mai
u9 = User.create :name => "Mai Nguyen", :email => 'cmn@ga.com', :password =>'chicken', :admin => false, :image_url => 'https://media-exp3.licdn.com/dms/image/C5603AQGBZKqmeS7ryQ/profile-displayphoto-shrink_400_400/0/1614561502632?e=1628726400&v=beta&t=OpXraLNd-_4hmHfsdgFVOAAKszPH6TP902ROSkS1j4s', :linkedin_url => 'https://www.linkedin.com/in/chi-mai-nguyenn/', :github_url => 'https://github.com/little-chi-mai', :student_status => true



puts "#{User.count} users created"

Task.destroy_all

t1 = Task.create :name => 'Coffee Interview', :due_date => '18/04/2021', :status => '1', :notes => 'Reach out to a GA Alumni and organise a coffee or zoom date'
t2 = Task.create :name => 'Resume', :due_date => '30/04/2021', :status => '1', :notes => 'Complete your first resume draft as outlined in the relevant presentation and book in with me for feedback'
t3 = Task.create :name => 'Personal Brand Statement', :due_date => '07/04/2021', :status => '1', :notes => 'Complete your personal brand statement and book in with me for feedback'
t4 = Task.create :name => 'Meetup', :due_date => '07/06/2021', :status => '1', :notes => 'Attend a Meetup'
t5 = Task.create :name => 'Coffee Interview', :due_date => '18/04/2021', :status => '1', :notes => 'Reach out to a GA Alumni and organise a coffee or zoom date'
t6 = Task.create :name => 'Resume', :due_date => '30/04/2021', :status => '1', :notes => 'Complete your first resume draft as outlined in the relevant presentation and book in with me for feedback'
t7 = Task.create :name => 'Personal Brand Statement', :due_date => '07/04/2021', :status => '1', :notes => 'Complete your personal brand statement and book in with me for feedback'
t8 = Task.create :name => 'Meetup', :due_date => '07/06/2021', :status => '1', :notes => 'Attend a Meetup'
t9 = Task.create :name => 'Coffee Interview', :due_date => '18/04/2021', :status => '1', :notes => 'Reach out to a GA Alumni and organise a coffee or zoom date'
t10 = Task.create :name => 'Resume', :due_date => '30/04/2021', :status => '1', :notes => 'Complete your first resume draft as outlined in the relevant presentation and book in with me for feedback'
t11 = Task.create :name => 'Personal Brand Statement', :due_date => '07/04/2021', :status => '1', :notes => 'Complete your personal brand statement and book in with me for feedback'
t12 = Task.create :name => 'Meetup', :due_date => '07/06/2021', :status => '1', :notes => 'Attend a Meetup'
t13 = Task.create :name => 'Coffee Interview', :due_date => '18/04/2021', :status => '1', :notes => 'Reach out to a GA Alumni and organise a coffee or zoom date'
t14= Task.create :name => 'Resume', :due_date => '30/04/2021', :status => '1', :notes => 'Complete your first resume draft as outlined in the relevant presentation and book in with me for feedback'
t15 = Task.create :name => 'Personal Brand Statement', :due_date => '07/04/2021', :status => '1', :notes => 'Complete your personal brand statement and book in with me for feedback'
t16 = Task.create :name => 'Meetup', :due_date => '07/06/2021', :status => '1', :notes => 'Attend a Meetup'
t17 = Task.create :name => 'Coffee Interview', :due_date => '18/04/2021', :status => '1', :notes => 'Reach out to a GA Alumni and organise a coffee or zoom date'
t18 = Task.create :name => 'Resume', :due_date => '30/04/2021', :status => '1', :notes => 'Complete your first resume draft as outlined in the relevant presentation and book in with me for feedback'
t19 = Task.create :name => 'Personal Brand Statement', :due_date => '07/04/2021', :status => '1', :notes => 'Complete your personal brand statement and book in with me for feedback'
t20 = Task.create :name => 'Meetup', :due_date => '07/06/2021', :status => '1', :notes => 'Attend a Meetup'

puts "#{User.count} users created"

Jobtracker.destroy_all
j1 = Jobtracker.create :company_name => '9News (North Sydney)', :jd => 'https://www.linkedin.com/jobs/search/?currentJobId=2549529393&pivotType=jymbii', :job_title => 'Junior Software Engineer', :status => '1', :job_notes => 'no application end date showing (posted in week begging 23 June)', :collateral => '[GoogleDocs Link]'

j2 = Jobtracker.create :company_name => '9News (North Sydney)', :jd => 'https://www.linkedin.com/jobs/search/?currentJobId=2549529393&pivotType=jymbii', :job_title => 'Junior Software Engineer', :status => '1', :job_notes => 'no application end date showing (posted in week begging 23 June)', :collateral => '[GoogleDocs Link]'

j3 = Jobtracker.create :company_name => '9News (North Sydney)', :jd => 'https://www.linkedin.com/jobs/search/?currentJobId=2549529393&pivotType=jymbii', :job_title => 'Junior Software Engineer', :status => '1', :job_notes => 'no application end date showing (posted in week begging 23 June)', :collateral => '[GoogleDocs Link]'

j4 = Jobtracker.create :company_name => '9News (North Sydney)', :jd => 'https://www.linkedin.com/jobs/search/?currentJobId=2549529393&pivotType=jymbii', :job_title => 'Junior Software Engineer', :status => '1', :job_notes => 'no application end date showing (posted in week begging 23 June)', :collateral => '[GoogleDocs Link]'
j5 = Jobtracker.create :company_name => '9News (North Sydney)', :jd => 'https://www.linkedin.com/jobs/search/?currentJobId=2549529393&pivotType=jymbii', :job_title => 'Junior Software Engineer', :status => '1', :job_notes => 'no application end date showing (posted in week begging 23 June)', :collateral => '[GoogleDocs Link]'

j6 = Jobtracker.create :company_name => '9News (North Sydney)', :jd => 'https://www.linkedin.com/jobs/search/?currentJobId=2549529393&pivotType=jymbii', :job_title => 'Junior Software Engineer', :status => '1', :job_notes => 'no application end date showing (posted in week begging 23 June)', :collateral => '[GoogleDocs Link]'

j7 = Jobtracker.create :company_name => '9News (North Sydney)', :jd => 'https://www.linkedin.com/jobs/search/?currentJobId=2549529393&pivotType=jymbii', :job_title => 'Junior Software Engineer', :status => '1', :job_notes => 'no application end date showing (posted in week begging 23 June)', :collateral => '[GoogleDocs Link]'

j8 = Jobtracker.create :company_name => '9News (North Sydney)', :jd => 'https://www.linkedin.com/jobs/search/?currentJobId=2549529393&pivotType=jymbii', :job_title => 'Junior Software Engineer', :status => '1', :job_notes => 'no application end date showing (posted in week begging 23 June)', :collateral => '[GoogleDocs Link]'
j9 = Jobtracker.create :company_name => '9News (North Sydney)', :jd => 'https://www.linkedin.com/jobs/search/?currentJobId=2549529393&pivotType=jymbii', :job_title => 'Junior Software Engineer', :status => '1', :job_notes => 'no application end date showing (posted in week begging 23 June)', :collateral => '[GoogleDocs Link]'

j10 = Jobtracker.create :company_name => '9News (North Sydney)', :jd => 'https://www.linkedin.com/jobs/search/?currentJobId=2549529393&pivotType=jymbii', :job_title => 'Junior Software Engineer', :status => '1', :job_notes => 'no application end date showing (posted in week begging 23 June)', :collateral => '[GoogleDocs Link]'

j11 = Jobtracker.create :company_name => '9News (North Sydney)', :jd => 'https://www.linkedin.com/jobs/search/?currentJobId=2549529393&pivotType=jymbii', :job_title => 'Junior Software Engineer', :status => '1', :job_notes => 'no application end date showing (posted in week begging 23 June)', :collateral => '[GoogleDocs Link]'

j12 = Jobtracker.create :company_name => '9News (North Sydney)', :jd => 'https://www.linkedin.com/jobs/search/?currentJobId=2549529393&pivotType=jymbii', :job_title => 'Junior Software Engineer', :status => '1', :job_notes => 'no application end date showing (posted in week begging 23 June)', :collateral => '[GoogleDocs Link]'

puts "#{Jobtracker.count} jobs created"


puts "Users in Cohorts"
c1.users << u2
c1.users << u3
c2.users << u4
c3.users << u5
c4.users << u6
c5.users << u7
c6.users << u9

puts "Jobs to Users"
u2.jobtrackers << j1 << j10
u3.jobtrackers << j2 << j11
u4.jobtrackers << j3 << j12
u5.jobtrackers << j4 << j8
u6.jobtrackers << j5 << j9
u7.jobtrackers << j6
u9.jobtrackers << j7

puts "tasks to Users"

u2.tasks << t1 << t2 << t15
u3.tasks << t3 << t4 << t16
u4.tasks << t5 << t6 << t17
u5.tasks << t7 << t8 << t18
u6.tasks << t2 << t10 << t19
u7.tasks << t11 << t12 << t20
u9.tasks << t13 << t14
