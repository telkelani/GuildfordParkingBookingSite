require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should return contact email" do
    mail = ContactMailer.contact_email("Name Lastname","lmao@gparking.com",  @message = "Hello")
    assert_equal ['destination@gparking.com'], mail.to
    assert_equal ['source@gparking.com'], mail.from
  end

end
