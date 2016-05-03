require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home #the symbol here maps directly to the routes.rb file, where we defined "home" etc.
    assert_response :success
    assert_select "title", "beermac | home"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "beermac | about"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "beermac | contact"
  end

end
