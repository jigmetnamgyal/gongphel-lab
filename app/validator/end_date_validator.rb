class EndDateValidator < ActiveModel::Validator
  def validate(record)
    return if record.start_date.blank? || record.end_date.blank?

    record.errors.add(:end_date, "must be later than start date") if record.end_date < record.start_date
  end
end