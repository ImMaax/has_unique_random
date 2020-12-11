require "test_helper"

class PageTest < ActiveSupport::TestCase
  test "generates random url_id attribute with default length" do
    page = Page.new
    page.name = 'Test'
    page.content = 'Test'

    assert page.save
    assert_equal Page.first.url_id.length, 8
    assert_not Page.first.url_id.nil?
  end
end
