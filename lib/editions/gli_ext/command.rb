module GLI
  module CommandConfigDSL
    def config_required state = true
      @config_required = state
    end

    def config_required?
      @config_required ||= false
    end
  end

  class Command
    include CommandConfigDSL
  end
end
