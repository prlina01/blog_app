class MessageMailer < ApplicationMailer

  def contact_me(message)
    @body = message.body
    mail to: "prlinap@gmail.com", from: message.email
  end

end