//
//  Pizza.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/19.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 抽象类，不需要自己实现，相当于一个接口。
 
 注释：在设计模式中，所谓的“实现一个接口”并“不一定”表示“写一个类，并利用implement关键词来实现某个java接口”。“实现一个接口”泛指“实现某个超类型（可以是类或接口）的某个方法”。
 */

typedef NS_ENUM(NSUInteger, PizzaType) {
    PizzaTypeCheese,
    PizzaTypeVeggie,
    PizzaTypeClam,
    PizzaTypePepperoni,
};

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

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
