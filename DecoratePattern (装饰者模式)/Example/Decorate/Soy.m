//
//  Soy.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/6.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "Soy.h"

@interface Soy ()

@property (strong, nonatomic) Beverage *beverage;

@end

@implementation Soy

- (instancetype)initWithBeverage:(Beverage *)beverage {
    self = [super init];
    if (self) {
        self.beverage = beverage;
    }
    return self;
}

- (NSString *)objectDescription {
    return [self.beverage.objectDescription stringByAppendingString:@", Soy"];
}

- (float)cost {
    return 0.15 + [self.beverage cost];
}

@end
