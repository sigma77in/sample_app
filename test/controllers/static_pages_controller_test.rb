require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

    def setup
        @base_title = "Ruby on Rails Tutorial Sample App"
    end

    def contact
        @contact = "Raghav Sood <raghav_sood@hotmail.com>"
    end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
    assert_select "h1", "Contact | Raghav Sood <raghav_sood@hotmail.com>"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
    assert_select "h1", "Contact | Raghav Sood <raghav_sood@hotmail.com>"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
    assert_select "h1", "Contact | Raghav Sood <raghav_sood@hotmail.com>"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end
end
