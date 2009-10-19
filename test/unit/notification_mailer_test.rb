require 'test_helper'

class NotificationMailerTest < ActionMailer::TestCase
  test "contact" do
    @expected.subject = 'NotificationMailer#contact'
    @expected.body    = read_fixture('contact')
    @expected.date    = Time.now

    assert_equal @expected.encoded, NotificationMailer.create_contact(@expected.date).encoded
  end

end
