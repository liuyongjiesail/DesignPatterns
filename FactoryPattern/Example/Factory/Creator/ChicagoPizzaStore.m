//
//  ChicagoPizzaStore.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/24.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "ChicagoPizzaStore.h"
#import "ChicagoStyleCheesePizza.h"
#import "ChicagoStyleVeggiePizza.h"
#import "ChicagoStyleClamPizza.h"
#import "ChicagoStylePepperoniPizza.h"

@implementation ChicagoPizzaStore

- (YJPizza *)createPizza:(YJPizzaType)type {
    
    YJPizza *pizza;
    switch (type) {
        case YJPizzaTypeCheese: {
            pizza = [ChicagoStyleCheesePizza new];
            break;
        }
        case YJPizzaTypeVeggie: {
            pizza = [ChicagoStyleVeggiePizza new];
            break;
        }
        case YJPizzaTypeClam: {
            pizza = [ChicagoStyleClamPizza new];
            break;
        }
        case YJPizzaTypePepperoni: {
            pizza = [ChicagoStylePepperoniPizza new];
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
