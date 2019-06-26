module RailsSettings
  class Base < Settings
    class << self
      def [](key)
        return super(key) unless rails_initialized?
        super(key)
      end

      # set a setting value by [] notation
      def []=(var_name, value)
        super
      end
    end
  end
end
