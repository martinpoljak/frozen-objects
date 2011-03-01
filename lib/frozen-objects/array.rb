# encoding: utf-8
# (c) 2011 Martin Kozák (martinkozak@martinkozak.net)

##
# Implicitly frozen objects.
#

module Frozen
    ##
    # Implicitly frozen array.
    # @note All calls are +Array+ compatible.
    #
    
    class Array < ::Array
        def initialize(*args, &block)
            super(*args, &block)
            self.freeze
        end
    end
end
