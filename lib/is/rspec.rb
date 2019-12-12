require 'rspec'

module Is
  module RSpec
    class Matcher
      def initialize type
        @type = type
      end

      def matches? it
        @instance = @type.new it
        @instance.ok?
      end

      def failure_message
        @instance.to_s
      end

      def description
        "be of #{@type}"
      end
    end

    module Helpers
      def fit type
        Matcher.new type
      end

      def is it, type
        expect(it).to fit type
      end
    end
  end
end

RSpec.configure do |config|
  config.include Is::RSpec::Helpers
end
