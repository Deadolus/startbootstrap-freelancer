# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
    @@message={:name=>"Tester Mc Test",
     :email=>"thisisatest@testing.com",
      :phone=>"+556322332",
       :content=>"Hello, this is a test message"}
    def thankyou
    ContactMailer.thankyou_email(@@message)
    end
    def forward
    ContactMailer.forward_email(@@message)
    end
end
