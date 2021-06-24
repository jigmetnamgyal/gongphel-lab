class StartDateValidator < ActiveModel::Validator
  def validate(record)
    return if record.start_date.blank?

    record.errors.add(:start_date,"can not be before current date") if record.start_date.past?
  end
end