//
//  ABasePizzaStore.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/2/20.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "ABasePizzaStore.h"

@implementation ABasePizzaStore


- (ABasePizza *)orderPizza:(APizzaType)type {
    
    ABasePizza *pizza;
    
    pizza = [self createPizza:type];
    
    NSLog(@"%@", pizza);
    
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    
    return pizza;
}

@end
