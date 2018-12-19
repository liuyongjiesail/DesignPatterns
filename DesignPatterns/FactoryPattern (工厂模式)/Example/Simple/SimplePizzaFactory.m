//
//  SimplePizzaFactory.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/19.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "SimplePizzaFactory.h"
#import "CheesePizza.h"
#import "VeggiePizza.h"
#import "ClamPizza.h"
#import "PepperoniPizza.h"

@implementation SimplePizzaFactory

- (Pizza *)createPizza:(PizzaType)type {
    Pizza *pizza;
    switch (type) {
        case PizzaTypeCheese: {
            pizza = [CheesePizza new];
            break;
        }
        case PizzaTypeVeggie: {
            pizza = [VeggiePizza new];
            break;
        }
        case PizzaTypeClam: {
            pizza = [ClamPizza new];
            break;
        }
        case PizzaTypePepperoni: {
            pizza = [PepperoniPizza new];
            break;
        }
        default: {
            pizza = [Pizza new];
            break;
        }
    }
    return pizza;
}

@end
