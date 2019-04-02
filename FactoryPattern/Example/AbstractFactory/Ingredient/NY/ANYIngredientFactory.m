//
//  ANYIngredientFactroy.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/2/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "ANYIngredientFactory.h"
#import "ANYIngredientFirst.h"
#import "ANYIngredientSecond.h"

@implementation ANYIngredientFactory

- (AIngredientFirst *)first {
    return [ANYIngredientFirst new];
}

- (AIngredientSecond *)second {
    return [ANYIngredientSecond new];
}

@end
