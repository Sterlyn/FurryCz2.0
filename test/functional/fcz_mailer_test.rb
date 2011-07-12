require 'test_helper'

class FczMailerTest < ActionMailer::TestCase
  test "new_registration" do
    mail = FczMailer.new_registration
    assert_equal "New registration", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "intercom_messsage" do
    mail = FczMailer.intercom_messsage
    assert_equal "Intercom messsage", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "new_password" do
    mail = FczMailer.new_password
    assert_equal "New password", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
