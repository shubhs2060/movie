class UserMailer < ApplicationMailer

  def subscription_confirmation(newsletters,movie)

    @newsletters = newsletters
    @movie = movie
    mail to: newsletters.map(&:email), subject: "A New Movie has been Added"
  end
end
