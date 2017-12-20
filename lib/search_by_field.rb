module SearchByField
  def search(params, number_records)
    result = self
    params.each do |key, value|
      result = result.where("#{key} REGEXP ?", value) if column_names.include? key
    end
    result == self ? self.first(number_records) : result.first(number_records).to_a
  end
end
