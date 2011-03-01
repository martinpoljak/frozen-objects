# encoding: utf-8
# (c) 2011 Martin Kozák (martinkozak@martinkozak.net)

require "frozen-objects/string"
require "frozen-objects/array"
require "frozen-objects/hash"

##
# Implicitly frozen objects.
#

module Frozen
    
    ##
    # Creates frozen object by operator.
    #
    # @param [Object] value some value for freeze
    # @return [Object] frozen object
    # @since 0.2.0
    #
    
    def self.<<(value)
        value.freeze
    end
    
end
