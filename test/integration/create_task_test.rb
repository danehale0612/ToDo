require 'test_helper'

class CreateTaskTest < ActionDispatch::IntegrationTest
  test "create a new task" do
    visit '/'
    fill_in 'Enter Task', with: 'My First Task!!'
    click_button 'Submit Task'
    visit '/tasks'
    assert_include page.body, 'First Task!!'
  end
end