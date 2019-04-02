//
//  Soy.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/6.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "CondimentDecorator.h"

NS_ASSUME_NONNULL_BEGIN

@interface Soy : CondimentDecorator

- (instancetype)init NS_UNAVAILABLE;

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithBeverage:(Beverage *)beverage;

@end

NS_ASSUME_NONNULL_END
