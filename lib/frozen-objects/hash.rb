# encoding: utf-8
# (c) 2011 Martin Kozák (martinkozak@martinkozak.net)

##
# Implicitly frozen objects.
#

module Frozen
    ##
    # Implicitly frozen hash.
    #
    # @note All calls are +Hash+ compatible.
    # @see http://www.ruby-doc.org/core/classes/Hash.html
    #
    
    class Hash < ::Hash
        def self.[](*args)
            result = super(*args)
            result.freeze
        end
        
        def initialize(*args, &block)
            super(*args, &block)
            self.freeze
        end
    end
end
