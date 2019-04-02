//
//  AChicagoIngredientFactroy.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/2/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "AChicagoIngredientFactory.h"
#import "AChicagoIngredientFirst.h"
#import "AChicagoIngredientSecond.h"

@implementation AChicagoIngredientFactory

- (AIngredientFirst *)first {
    return [AChicagoIngredientFirst new];
}

- (AIngredientSecond *)second {
    return [AChicagoIngredientSecond new];
}

@end
