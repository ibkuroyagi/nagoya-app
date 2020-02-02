class ApplicationMailer < ActionMailer::Base

  default from:     "nagoya-app@example.com",
          bcc:      "example@gmail.com",
          reply_to: "example@gmail.com"
  layout 'mailer'
end
