require 'rack/conditional'

module Rack
  # Add "use_if" method by include.
  module Conditionable
    def use_if(condition, middleware, *args, &block)
      use Rack::Conditional, condition, middleware, *args, &block
    end

    def insert_before_if(index, condition, middleware, *args, &block)
      insert_before index, Rack::Conditional, condition, middleware, *args, &block
    end
  end
end
