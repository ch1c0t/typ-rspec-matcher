require 'ap'
require 'typ/formatter'

module Typ
  module RSpec
    class Matcher
      def initialize typ_class
        @typ_class = typ_class
      end

      def matches? it
        @it = it
        @typ = @typ_class.new it
        @typ.ok?
      end

      def failure_message
        @it.ai + "\n" + Formatter.new(@typ).to_s
      end

      def description
        "be #{@typ_class}"
      end
    end
  end
end
