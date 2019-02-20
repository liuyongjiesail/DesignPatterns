//
//  ABasePizzaStore.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/2/20.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ABasePizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface ABasePizzaStore : NSObject

- (ABasePizza *)orderPizza:(APizzaType)type;

/**
 生成pizza，由子类实现。
 
 @param type type
 @return pizza
 */
- (ABasePizza *)createPizza:(APizzaType)type;

@end

NS_ASSUME_NONNULL_END
