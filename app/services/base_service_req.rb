class BaseServiceReq
  include Assigner
  attr_accessor :params, :id

  def initialize(attributes={})
    assign_attributes(attributes)
  end
end