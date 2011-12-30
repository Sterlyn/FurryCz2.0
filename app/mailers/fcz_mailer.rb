class FczMailer < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.fcz_mailer.new_registration.subject
  #
  def new_registration
    mail :to => "to@example.org"
  end

  def declined_registration
    mail :to => "to@example.org"
  end

  def confirmed_registration
    mail :to => "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.fcz_mailer.intercom_messsage.subject
  #
  def intercom_messsage
    @greeting = "Hi"

    mail :to => "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.fcz_mailer.new_password.subject
  #
  def new_password
    @greeting = "Hi"

    mail :to => "to@example.org"
  end
end
