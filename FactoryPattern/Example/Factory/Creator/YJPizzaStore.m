//
//  YJPizzaStroe.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/24.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "YJPizzaStore.h"

@implementation YJPizzaStore

- (YJPizza *)orderPizza:(YJPizzaType)type {
    
    YJPizza *pizza;
    
    pizza = [self createPizza:type];
    
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    
    return pizza;
}

@end
