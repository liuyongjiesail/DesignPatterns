//
//  AIngredientFactory.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/2/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AIngredientFirst.h"
#import "AIngredientSecond.h"

NS_ASSUME_NONNULL_BEGIN

@interface AIngredientFactory : NSObject

@property (strong, nonatomic) AIngredientFirst  *first;
@property (strong, nonatomic) AIngredientSecond *second;

@end

NS_ASSUME_NONNULL_END
