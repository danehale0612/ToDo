require 'test_helper'

class BrowseTaskTest < ActionDispatch::IntegrationTest
  test "view list of tasks" do
    Task.create!(name: "First Task!!")
    Task.create!(name: "Read rails routing guide")

    visit '/tasks'
    assert_equal 2, Task.count
    assert_include page.body, "First Task!!"
    assert_include page.body, "Read rails routing guide"
  end
end