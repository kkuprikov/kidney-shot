require 'spec_helper'
require 'rails_helper'
require 'factory_girl'


feature 'New task creation' do 
  scenario 'user can create a valid task' do
    attrs = attributes_for(:task)
    p Task.new
    task = FactoryGirl.build(:task, completion: Time.now)
    click_button 'Create Task'
    expect(page).to have_content 'Task was successfully created'
  end
end
