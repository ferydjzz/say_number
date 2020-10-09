module SayNumber
  class Config
    attr_accessor :use_decimal

    def decimal?
      return true if use_decimal.nil?
      return use_decimal if defined?(use_decimal)

      true
    end
  end
end
