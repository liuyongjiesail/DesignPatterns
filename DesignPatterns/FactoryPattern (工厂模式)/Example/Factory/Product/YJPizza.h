//
//  YJPizza.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/24.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, YJPizzaType) {
    YJPizzaTypeCheese,
    YJPizzaTypeVeggie,
    YJPizzaTypeClam,
    YJPizzaTypePepperoni,
};

@interface YJPizza : NSObject

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
