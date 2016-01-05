#require 'test_helper'

class ContactMailerTest < ActionMailer::Preview
    
    message={"name"=>"DevEgli",
     "email"=>"deadolus@gmail.com",
      "phone"=>"+41793924504",
       "content"=>"test"}
    ContactMailer.forward_email(message)
  # test "the truth" do
  #   assert true
  # end
end
