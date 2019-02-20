//
//  AVeggiePizza.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/2/20.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "AVeggiePizza.h"

@implementation AVeggiePizza

- (AIngredientFirst *)first {
    return self.ingredientFactory.first;
}

- (AIngredientSecond *)second {
    return self.ingredientFactory.second;
}

@end
