# encoding: utf-8
# (c) 2011 Martin Kozák (martinkozak@martinkozak.net)

##
# Implicitly frozen objects.
#

module Frozen
    ##
    # Implicitly frozen +Array+.
    #
    # @note All calls are +Array+ compatible.
    # @see http://www.ruby-doc.org/core/classes/Array.html
    #
    
    class Array < ::Array
        def initialize(*args, &block)
            super(*args, &block)
            self.freeze
        end
    end
end
