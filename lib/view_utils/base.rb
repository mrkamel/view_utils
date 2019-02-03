
require "view_utils/helper"

module ViewUtils
  class Base
    attr_reader :view

    def initialize(view)
      @view = view
    end

    def util(name)
      @util_instances ||= {}
      @util_instances[name] ||= "#{name.to_s.camelcase}Util".constantize.new(view)
    end
  end
end

