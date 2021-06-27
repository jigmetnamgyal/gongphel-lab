module Requests
  class Updater < BaseService
    def call
      current_user.request_applications.find(params[:id]).tap do |request|
        request.update!(params)
      end
    end
  end
end