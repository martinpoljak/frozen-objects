# encoding: utf-8
# (c) 2011 Martin Kozák (martinkozak@martinkozak.net)

##
# Implicitly frozen objects.
#

module Frozen
    ##
    # Implicitly frozen string.
    # @note All calls are +String+ compatible.
    #
    
    class String < ::String
        def initialize(*args, &block)
            super(*args, &block)
            self.freeze
        end
    end
end
