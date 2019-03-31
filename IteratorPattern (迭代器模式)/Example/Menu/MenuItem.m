//
//  MenuItem.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/31.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "MenuItem.h"

@implementation MenuItem
    
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

@end
