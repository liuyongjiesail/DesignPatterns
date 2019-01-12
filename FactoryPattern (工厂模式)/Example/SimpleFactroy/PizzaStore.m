//
//  PizzaStroe.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/19.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "PizzaStore.h"
#import "SimplePizzaFactory.h"

@interface PizzaStore ()

@property (strong, nonatomic) SimplePizzaFactory *factory;

@end

@implementation PizzaStore

- (Pizza *)orderPizza:(PizzaType)type {
    Pizza *pizza;
    
    pizza = [self.factory createPizza:type];
    
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    
    return pizza;
}

#pragma mark - Lazy Loading

- (SimplePizzaFactory *)factory {
    if (!_factory) {
        _factory = [SimplePizzaFactory new];
    }
    return _factory;
}

@end
