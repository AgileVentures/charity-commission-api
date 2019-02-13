namespace :db do
  desc "TODO"
  task export_organisations: :environment do
    ExportOrganisations.with()
  end
end
