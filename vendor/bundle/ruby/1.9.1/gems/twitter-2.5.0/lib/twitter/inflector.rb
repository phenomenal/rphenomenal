module Twitter
  module Inflector

    # Converts a snake_case string to CamelCase
    #
    # @params string [String]
    # @return [String]
    def camelize(string)
      string.split('_').map(&:capitalize).join
    end

  end
end
