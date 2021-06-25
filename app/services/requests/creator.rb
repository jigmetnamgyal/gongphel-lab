module Requests
  class Creator < BaseServiceReq
    def call
      RequestApplication.create!(params)
    end
  end
end