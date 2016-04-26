require 'rails/generators/named_base'

class Rails::ApiblueprintGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def hoge
    create_file "config/initializers/apiblueprint_initializer.rb"
  end
end
