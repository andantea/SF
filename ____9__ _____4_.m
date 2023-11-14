/*
author: @hao
*/

@interface City: NSObject <Printing> {
    NSString *activateTime, *deactivateTime;
    int population;
}

- (id) initWithParams: (NSString *)acTm, (NSString *) dacTm, (int) ppl;
- (void) onActivate;
- (void) onDeactivate;

@end

@implementation City
- (id) initWithParams: (NSString *)acTm, (NSString *) dacTm, (int) ppl {
    if (self=[super init]) {
        activateTime = acTm;
        deactivateTime = dacTm;
        population = ppl;
    }
    return self;
}

- (void) onActivate {
    // ...
}

- (void) onDeactivate {
    // ...
}
@end

NSArray *cities = [
    NSArray arrayWithObjects:
    [[City alloc] initWithParams acTm: @"06:00" deacTm: @"30:00" ppl: 5000000],
    [[City alloc] initWithParams acTm: @"30:00" deacTm: @"46:00" ppl: 25000000],
    [[City alloc] initWithParams acTm: @"46:00" deacTm: @"54:00" ppl: 50000000],
    nil
];
