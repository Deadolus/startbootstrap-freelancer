class PersonalPageController < ApplicationController
    def personal_page
    end

    def send_contact_email
        @message = params[:message]
        if(@message) 
            if(ContactMailer.sendEmails(@message))
                redirect_to root_path, notice: "Your message has been sent to Simon - thank you #{@message[:name]}!"
            else
                redirect_to root_path, alert: "There was a problem with the mailer, could not send your e-mail"
            end 
        else 
            redirect_to root_path, alert: "Sorry, there was a problem in the transaction, could not send your e-mail"
        end
    end

end
