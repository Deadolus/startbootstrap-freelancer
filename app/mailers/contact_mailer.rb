
class ContactMailer < ApplicationMailer
    def thankyou_email(user)
        @user = user
        @url = "http://www.swiry.ch/"
        if(mail(to: @user.email, subject: 'Your message has been sent'))
            return true
        else
            return false
        end
    end

    def forwardEmail(message)
        if(mail(to: 'deadolus@gmail.com', subject: 'New Email from contact form'))
            return true
        else
            return false
        end
    end

    def sendEmails(message)
        if(self.forwardEmail(message) && self.thankyou_email(message[:email]) ) 
            return true
        else
            return false
        end
    end
end
