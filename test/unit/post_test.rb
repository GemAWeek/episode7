require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should create a Post with valid attributes" do
    post = Fabricate.build(:post)
    assert post.save
  end

  test "should store a bitly-shortened url" do
    post = Fabricate(:post)
    assert_not_nil post.short_url
    assert_match /bit.ly/, post.short_url
  end

  test "rejects Posts without titles" do
    post = Fabricate.build(:post, :title => "")
    assert !post.save, "Must have a title"
  end

  test "rejects Posts without a body" do
    post = Fabricate.build(:post, :body => "")
    assert !post.save, "Must have a body"
  end
end
