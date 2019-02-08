class CharityOverviewController < ApplicationController
  def index
    charities_basic = Charity.search(params, 50)
    charity_overview = {}
    @charities = charities_basic.inject([]) do |accum, charity|
      desc = CharityObject.where(regno: charity.regno).map{ |object| object.object }.join('')
      charity_overview = charity.serializable_hash.merge!(desc: desc).symbolize_keys
      accum << charity_overview
    end
  end
end