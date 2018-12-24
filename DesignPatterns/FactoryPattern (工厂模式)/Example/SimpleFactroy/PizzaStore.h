//
//  PizzaStroe.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/19.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface PizzaStore : NSObject

- (Pizza *)orderPizza:(PizzaType)type;

@end

NS_ASSUME_NONNULL_END
