class SubscriptionMailer < ApplicationMailer

  def info_email(newsletter)
    @newsletter = newsletter
    mail(to: @newsletter.email, subject: 'Subscription Confirmation')
  end

end
