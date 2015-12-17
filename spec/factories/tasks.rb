FactoryGirl.define do
  factory :task do
    title "Test Task"
    text "Test task description"
    completed false
    completion Time.now
  end
end
