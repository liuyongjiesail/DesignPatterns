//
//  CPMenuItem.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/7.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CPMenuItem.h"

@implementation CPMenuItem

- (instancetype)initWithName:(NSString *)name description:(NSString *)description vegetarian:(BOOL)vegetarian price:(CGFloat)price {
    
    self = [super init];
    if (self) {
        self.name = name;
        self.Description = description;
        self.vegetarian = vegetarian;
        self.price = price;
    }
    return self;
    
}

- (void)print {
    NSLog(@"%@, %@, %.2f", self.name, self.Description, self.price);
}

@end
