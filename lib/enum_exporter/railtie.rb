module EnumExporter
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load 'tasks/enum_exporter_tasks.rake'
    end
  end
end
