# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
    @@message={"name"=>"DevEgli",
     "email"=>"deadolus@gmail.com",
      "phone"=>"+41793924504",
       "content"=>"Hello, this is a test message"}
    def thankyou
    ContactMailer.thankyou_email(@@message)
    end
    def forward
    message={"name"=>"DevEgli",
     "email"=>"deadolus@gmail.com",
      "phone"=>"+41793924504",
       "content"=>"test"}
    ContactMailer.forward_email(message)
    end
end
