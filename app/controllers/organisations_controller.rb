class OrganisationsController < ApplicationController

  def index
    @organisations = Organisation.search(params, 50)

    render json: @organisations
  end
end
