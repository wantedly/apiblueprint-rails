require 'rails/generators/named_base'

class Rails::ApiblueprintGenerator < Rails::Generators::NamedBase
  desc "create apiblueprint file"
  source_root File.expand_path("../templates", __FILE__)

  argument(
    :attributes,
    type: :array,
    default: [],
    banner: "field:type field:type"
  )

  def set_attribute
    @attrs = Array.new()
    attributes.map do |val|
      @attrs.push( { name: val.name, type: val.type, init: val.default } )
    end
    @attrs.map do |attr|
      case attr[:type].to_s
      when "integer", "primary_key", "decimal", "float" then
        attr[:type] = "number"
      when "boolean" then
        attr[:type] = "boolean"
      when "references" then
        attr[:name] = attr[:name] + "_id"
        attr[:type] = "number, required"
      else
        attr[:type] = "string"
      end
    end
  end

  def create_apib_file
    template "apiblueprint.erb", "doc/#{file_name}.apib"
  end
end
