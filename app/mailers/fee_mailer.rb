class FeeMailer < ActionMailer::Base
  default from: "kontakt@netz39.de"
  
  def confirmation(fee)
    @fee = fee
    mail(to: fee.email, subject: "Fee confirmation")
  end
end