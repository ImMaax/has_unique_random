require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "generates random url_id attribute with custom length" do
    post = Post.new
    post.content = 'Test'

    assert post.save
    assert_equal Post.first.url_id.length, 4
    assert_not Post.first.url_id.nil?
  end
end
