'''
author: @ted
'''

class Box
    attr_accessor :LED

    def initialize
        # ...
    end
    
    def press_btn
        @LED.flash(at: Time.now - 1)
    end
end