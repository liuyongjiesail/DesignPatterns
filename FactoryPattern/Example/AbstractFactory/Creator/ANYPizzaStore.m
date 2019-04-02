//
//  ANYPizzaStore.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/2/20.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "ANYPizzaStore.h"
#import "ACheesePizza.h"
#import "AVeggiePizza.h"
#import "AClamPizza.h"
#import "APepperoniPizza.h"
#import "ANYIngredientFactory.h"

@implementation ANYPizzaStore

- (ABasePizza *)createPizza:(APizzaType)type {
    
    ABasePizza *pizza;
    
    ANYIngredientFactory *ingredientFactory = [ANYIngredientFactory new];
    
    switch (type) {
        case APizzaTypeCheese: {
            pizza = [ACheesePizza new];
            break;
        }
        case APizzaTypeVeggie: {
            pizza = [AVeggiePizza new];
            break;
        }
        case APizzaTypeClam: {
            pizza = [AClamPizza new];
            break;
        }
        case APizzaTypePepperoni: {
            pizza = [APepperoniPizza new];
            break;
        }
        default: {
            pizza = [ABasePizza new];
            break;
        }
    }
    pizza.ingredientFactory = ingredientFactory;

    return pizza;
    
}

@end
