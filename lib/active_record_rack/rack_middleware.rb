require 'active_record'

module ActiveRecordRack
  class RackMiddleware
    def initialize(app)
      @app = app
    end

    def call(env)
      ActiveRecord::Base.connection_pool.with_connection { @app.call(env) }
    end
  end
end
