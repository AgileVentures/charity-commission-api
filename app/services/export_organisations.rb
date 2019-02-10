class ExportOrganisations
  def self.with(params = {'subno' => 0, 'postcode' => 'HA2'},
                number_of_records = 50)

      new(params, number_of_records).send(:run)
  end

  private
  
  def initialize(params, number_of_records)
    @params = params
    @number_of_records = number_of_records
  end
  
  def run
    find_or_create_organisations_and_update
  end
  
  def find_or_create_organisations_and_update
    charities = Charity.search(@params, @number_of_records)
    charities.each do |charity|
      desc = CharityObject.where(regno: charity.regno).map { |charity_object| charity_object.object }.join('')
      organisation = Organisation.find_or_create_by!(name: charity.name.titleize)
      organisation.update({address: charity.add1,
                          postcode: charity.postcode,
                          latitude: charity.lat,
                          longitude: charity.lon,
                          description: desc,
                          imported_at: Time.current})
      organisation.update(telephone: charity.phone) if charity.phone
    end
  end
end
