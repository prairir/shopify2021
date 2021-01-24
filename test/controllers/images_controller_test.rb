require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get images_new_url
    assert_response :success
  end

  test "should get index" do
    get root_url
    assert_response :success
  end

  test "should get show" do
    @image = Image.new(title: 'test1')
    get images_url(@image.friendly_id)
  end

  test "should destroy" do
    destroy images_url(@image.friendly_id)
  end

end
