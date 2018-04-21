require "enum_exporter/railtie"

module EnumExporter
  class << self
    def yaml
      enums.to_yaml
    end

    def json
      enums.to_json
    end

    def enums
      enums = []
      models.each do |model|
        if !model.defined_enums.empty?
          enums << {model.to_s => model.defined_enums}
        end
      end
      enums
    end

    def models
      return [] unless defined?(Rails)

      Rails.application.eager_load!

      descendants = []
      descendants |= ApplicationRecord.descendants if defined?(ApplicationRecord)
      descendants |= ActiveRecord::Base.descendants if defined?(ActiveRecord)

      descendants.sort_by {|m| m.to_s}
    end
  end
end
