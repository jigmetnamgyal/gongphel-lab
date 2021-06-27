module Requests
  class Creator < BaseServiceReq
    def call
      request = RequestApplication.create!(params)
      id = request[:collateral_id]
      dash = Dashboard.where(id: id).first

      if !(dash)
        request.update!(result: 2)
        request.update!(status: 1)
      else
        a = dash.attributes
        a.delete("user_id")
        request.update!(a)
        request.update!(result: 0)
        request.update!(status: 0)
      end
      RequestCheckMailer.with(req: request).send_req_check_mail.deliver_now!
      request
    end
  end
end
