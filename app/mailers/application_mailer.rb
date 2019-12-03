class ApplicationMailer < ActionMailer::Base

  default from:     "nagoya-app@example.com",
          bcc:      "busikuro@gmail.com",
          reply_to: "busikuro@gmail.com"
  layout 'mailer'
end
