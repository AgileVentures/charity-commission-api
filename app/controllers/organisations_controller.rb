class OrganisationsController < ApplicationController

  def index
    @organisations = Organisation.all

    render json: @organisations
  end
end
