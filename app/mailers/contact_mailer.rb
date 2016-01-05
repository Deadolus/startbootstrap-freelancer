
class ContactMailer < ApplicationMailer
    def thankyou_email(message)
        @user = message[:name]
        @url = "http://www.swiry.ch/"
        if(mail(to: message[:email], subject: '#{@user} - Your message has been sent'))
            return true
        else
            return false
        end
    end

    def forward_email(message)
        @message = message
        if(mail(to: 'deadolus@gmail.com', subject: 'New Email from contact form'))
            return true
        else
            return false
        end
    end

    def sendEmails(message)
        logger.debug "in sendEmails"
        if(self.forward_email(message) && self.thankyou_email(message) ) 
            return true
            logger.debug "Sent both e-mails sucessfully"
        else
            logger.debug "Could not send the e-mails"
            return false
        end
    end
    def test
        logger.warn "this is a test"
    end

end
