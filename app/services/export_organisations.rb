class ExportOrganisations
  @@my_params = {}
  @@my_params['subno'] = 0
  @@my_params['postcode'] = 'HA2'

  def self.with(params = @@my_params,
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
#   charities = Charity.search(@params, @number_of_records)
    Charity.where(subno: 0).find_each.with_index do |charity, index|
      puts "Charity #{index}, regno: #{charity.regno}"
      desc = CharityObject.where(regno: charity.regno, subno: 0).order(:seqno).map { |charity_object| charity_object.object.sub(/\.$/, '').sub(/0001$/, '') }.join('') << '.'

#     organisation = Organisation.find_or_create_by!(name: charity.name.titleize)
      organisation = Organisation.find_or_create_by!(regno: charity.regno)

      organisation.address = charity.add1 if charity.add1
      organisation.postcode = charity.postcode if charity.postcode
      organisation.description = desc if desc
      organisation.latitude = charity.lat if charity.lat
      organisation.longitude = charity.lon if charity.lon
      organisation.telephone = charity.phone if charity.phone
      organisation.imported_at = Time.current
      organisation.save!
      # organisation.update({address: charity.add1,
      #                     postcode: charity.postcode,
      #                     latitude: charity.lat,
      #                     longitude: charity.lon,
      #                     description: desc,
      #                     imported_at: Time.current})
      # organisation.update(telephone: charity.phone) if charity.phone
    end
  end
end
