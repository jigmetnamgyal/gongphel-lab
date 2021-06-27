class RequestCheckMailer < ApplicationMailer
  default from: 'gongphelteam@gmail.com'

  def send_req_check_mail
    @request = params
    @request_in_json = @request[:req].attributes
    @pdf = "#{Rails.root}/lib/attachments/Gemfile.pdf"
    @pdf_reader = File.binread(@pdf)

    mail(to: "jigmetashi02@gmail.com", subject: "[Gongphel Team] Request status check", attachments: @pdf_reader)
  end
end
