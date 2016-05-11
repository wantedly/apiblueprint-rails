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

  class_option "apidoc-dir", type: :string, default: "doc", desc: "Change doc directory by passing"
  class_option "generate", type: :string, default: "scaffold", desc: "Change generate type (Default:scaffold, Other: none, controller, model...)"

  def set_attribute
    @attrs = Array.new()
    @args = Array.new()
    attributes.map do |val|
      @attrs.push( { name: val.name, type: val.type, init: val.default } )
    end
    @attrs.map do |attr|
      @args.push(attr[:name].to_s + ":" + attr[:type].to_s)
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
    template "apiblueprint.erb", "#{options["apidoc-dir"]}/#{file_name}.apib"
    if options["generate"] != "none" then
      invoke(options["generate"], [file_name, @args])
    end
  end
end
