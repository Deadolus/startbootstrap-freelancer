class ApplicationMailer < ActionMailer::Base
  default from: "noreply@swiry.ch"
  layout 'mailer'
end

class ContactMailer < ApplicationMailer
end
