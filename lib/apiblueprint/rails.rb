require "apiblueprint/rails/version"
require "rails/generators"
require "rails/generators/rails/scaffold/scaffold_generator"

module Apiblueprint
  module Rails
    class Railtie < ::Rails::Railtie
      config.after_initialize do
        module ::Rails::Generators
          class ScaffoldGenerator < ResourceGenerator
            class_option :apidoc, desc: "Api document format", default: :apiblueprint
            hook_for :apidoc, required: true
          end
        end
      end
    end
  end
end
