//
//  NYPizzaStroe.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/24.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "NYPizzaStore.h"
#import "NYStyleCheesePizza.h"
#import "NYStyleVeggiePizza.h"
#import "NYStyleClamPizza.h"
#import "NYStylePepperoniPizza.h"

@implementation NYPizzaStore

- (YJPizza *)createPizza:(YJPizzaType)type {
    
    YJPizza *pizza;
    switch (type) {
        case YJPizzaTypeCheese: {
            pizza = [NYStyleCheesePizza new];
            break;
        }
        case YJPizzaTypeVeggie: {
            pizza = [NYStyleVeggiePizza new];
            break;
        }
        case YJPizzaTypeClam: {
            pizza = [NYStyleClamPizza new];
            break;
        }
        case YJPizzaTypePepperoni: {
            pizza = [NYStylePepperoniPizza new];
            break;
        }
        default: {
            pizza = [YJPizza new];
            break;
        }
    }
    return pizza;
    
}

@end
