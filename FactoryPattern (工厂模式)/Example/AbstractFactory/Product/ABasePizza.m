//
//  ABasePizza.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/2/20.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "ABasePizza.h"

@implementation ABasePizza

- (void)prepare {
    
    self.first = self.ingredientFactory.first;
    self.second = self.ingredientFactory.second;
    
}

@end
