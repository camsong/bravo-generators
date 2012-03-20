require 'generators/bravo'

module Bravo
  module Generators
    class LayoutGenerator < Base
      argument :layout_name, :type => :string, :default => 'bravo', :banner => 'layout_name'

      def create_layout
        template  'layout.html.erb', "app/views/layouts/#{file_name}.html.erb"
        copy_file 'bravo.css', "app/assets/stylesheets/#{file_name}.css"
        copy_file 'bravo.js', "app/assets/javascript/#{file_name}.js"

        copy_file 'layout_helper.rb', 'app/helpers/layout_helper.rb'
        copy_file 'error_messages_helper.rb', 'app/helpers/error_messages_helper.rb'
      end

      private

      def file_name
        layout_name.underscore
      end
    end
  end
end
