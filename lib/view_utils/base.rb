
require "view_utils/helper"

module ViewUtils
  class Base
    attr_accessor :view

    def initialize(view)
      self.view = view
    end

    def util(name)
      @util_instances ||= {}
      @util_instances[name] ||= "#{name.to_s.camelcase}Util".constantize.new(view)
    end
  end
end

