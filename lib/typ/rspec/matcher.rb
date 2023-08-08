require 'ap'
require 'typ/formatter'

module Typ
  module RSpec
    class Matcher
      def initialize typ_class, name_appendix = nil
        @typ_class, @name_appendix = typ_class, name_appendix
      end

      def matches? it
        @it = it
        @typ = @typ_class.new it
        (@typ.name = @typ.name + @name_appendix) if @name_appendix
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
