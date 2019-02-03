
module ViewUtils
  module Helper
    def util(name)
      @util_instances ||= {}
      @util_instances[name] ||= "#{name.to_s.camelcase}Util".constantize.new(self)
    end
  end
end

