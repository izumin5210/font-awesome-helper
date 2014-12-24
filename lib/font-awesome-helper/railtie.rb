require 'rails/railtie'

module FontAwesomeHelper
  class Railtie < ::Rails::Railtie
    initializer 'font-awesome-helper.helpers' do
      ActiveSupport.on_load(:action_view) do
        include Helpers
      end
    end
  end
end
