module Requests
  class Updater < BaseService
    def call
      RequestApplication.find(params[:id]).tap do |request|
        request.update!(params)
      end
    end
  end
end