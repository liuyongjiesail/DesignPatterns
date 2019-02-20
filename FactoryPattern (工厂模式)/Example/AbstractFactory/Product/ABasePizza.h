//
//  ABasePizza.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/2/20.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AIngredientFirst.h"
#import "AIngredientSecond.h"
#import "AIngredientFactory.h"

typedef NS_ENUM(NSUInteger, APizzaType) {
    APizzaTypeCheese,
    APizzaTypeVeggie,
    APizzaTypeClam,
    APizzaTypePepperoni,
};

NS_ASSUME_NONNULL_BEGIN

@interface ABasePizza : NSObject

@property (strong, nonatomic) AIngredientFactory *ingredientFactory;

@property (strong, nonatomic) AIngredientFirst   *first;
@property (strong, nonatomic) AIngredientSecond  *second;

/**
 准备
 */
- (void)prepare;

/**
 烘烤
 */
- (void)bake;

/**
 切片
 */
- (void)cut;

/**
 装盒
 */
- (void)box;

@end

NS_ASSUME_NONNULL_END
