'''
author: @ted
'''

class Box
    attr_accessor :LED

    def initialize
        # ...
    end
    
    def press_btn
        @LED.flash(delay_sec: -1)
    end
end