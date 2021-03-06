require 'test_helper'

class SpControllerTest < ActionDispatch::IntegrationTest

  def setup
      @title="pages"
  end

  test "should get root" do
      get root_url
      assert_response:success
  end

  test "should get callme" do
    get sp_callme_url
    assert_response:success
    assert_select "title","callme,#{@title}"
  end

  test "should get about" do
    get sp_about_url
    assert_response:success
    assert_select "title" , "about,#{@title}"
  end

  test "should get home" do
    get sp_home_url
    assert_response :success
    assert_select "title" ,"home,#{@title}"
  end

  test "should get help" do
    get sp_help_url
    assert_response :success
    assert_select "title" , "help,#{@title}"
  end

  test "should get 404" do
    get sp_404_url
    assert_response:success
    assert_select "mark" , "404,#{@title}"
  end

end
