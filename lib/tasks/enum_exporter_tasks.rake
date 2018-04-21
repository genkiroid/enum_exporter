namespace :enum_exporter do
  desc "exports defined enums as yaml"
  task yaml: :environment do
    puts EnumExporter.yaml
  end

  desc "exports defined enums as json"
  task json: :environment do
    puts EnumExporter.json
  end
end
